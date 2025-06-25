<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class UserController extends Controller
{
    public function index()
    {
        $users= User::all();
        return view('users', compact('users'));
    }

    public function changePassword(Request $request, $id)
    {
        try {
            $request->validate([
                'password' => 'required|string|min:6|confirmed',
                'password_confirmation' => 'required|string|min:6',
            ]);

            $user = User::findOrFail($id);
            $user->update([
                'password' => bcrypt($request->password),
            ]);

            return redirect()->route('users.index')->with('success', 'Password berhasil diubah!');
        } catch (ValidationException $e) {
            if ($e->validator->errors()->has(key: 'password')) {
                return redirect()->route('users.index')
                    ->with('error', 'Konfirmasi password tidak cocok atau password terlalu pendek.');
            }

            return redirect()->route('users.index')->with('error', 'Input tidak valid.');
        } catch (\Exception $e) {
            return redirect()->route('users.index')->with('error', 'Gagal mengubah password. Silakan coba lagi.');
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
