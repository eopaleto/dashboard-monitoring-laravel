<div wire:poll.3s>
    <span class="badge {{ $status ? 'bg-success' : 'bg-danger' }} text-white mb-0 mt-1">
        <i class="fas {{ $status ? 'fa-plug-circle-check' : 'fa-plug-circle-xmark' }} me-2"></i>
        {{ $status ? 'Online' : 'Offline' }}
    </span>
</div>
