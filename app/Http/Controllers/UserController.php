<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('users', compact('users'));
    }

    public function update(Request $request, $id)
    {
        try {
            $rules = [
                'name' => 'required|string|max:255',
                'email' => "required|email|unique:users,email,$id",
                'role' => 'required|string',
            ];

            if ($request->filled('password')) {
                $rules['password'] = 'required|string|min:6|confirmed';
            }

            $validated = $request->validate($rules);

            $user = User::findOrFail($id);
            $user->name = $validated['name'];
            $user->email = $validated['email'];
            $user->role = $validated['role'];

            if ($request->filled('password')) {
                $user->password = bcrypt($validated['password']);
            }

            $user->save();

            return redirect()->route('users.index')->with('success', 'User berhasil diperbarui!');
        } catch (ValidationException $e) {
            return redirect()->route('users.index')
                ->with('error', 'Konfirmasi password tidak cocok atau data tidak valid.');
        } catch (\Exception $e) {
            return redirect()->route('users.index')
                ->with('error', 'Terjadi kesalahan saat memperbarui user.');
        }
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'name' => 'required|string|max:255',
                'email' => 'required|email|unique:users,email',
                'password' => 'required|confirmed|min:6',
                'role' => 'required|string'
            ]);

            $validated['password'] = bcrypt($validated['password']);

            User::create($validated);

            return redirect()->route('users.index')->with('success', 'User berhasil ditambahkan!');
        } catch (ValidationException $e) {
            if ($e->validator->errors()->has('email')) {
                return redirect()->route('users.index')
                    ->withInput()
                    ->with('error', 'Email sudah terdaftar!');
            }

            return redirect()->route('users.index')
                ->withInput()
                ->with('error', 'Data tidak valid. Pastikan semua kolom diisi dengan benar.');
        } catch (\Exception $e) {
            return redirect()->route('users.index')->with('error', 'Gagal menambahkan user. Silakan coba lagi.');
        }
    }

    public function destroy($id)
    {
        try {
            $user = User::findOrFail($id);

            if ($user->role === 'admin') {
                return redirect()->route('users.index')->with('error', 'User dengan role admin tidak dapat dihapus!');
            }

            $user->delete();

            return redirect()->route('users.index')->with('success', 'User berhasil dihapus!');
        } catch (\Exception $e) {
            return redirect()->route('users.index')->with('error', 'Terjadi kesalahan saat menghapus user.');
        }
    }
}
