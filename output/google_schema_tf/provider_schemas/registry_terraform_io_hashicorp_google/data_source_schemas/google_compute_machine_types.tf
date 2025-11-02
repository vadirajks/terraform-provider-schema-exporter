data "google_compute_machine_types" "name" {
  filter = string (Optional)
  id = string (Optional, Computed)
  machine_types = ['list', ['object', {'accelerators': ['list', ['object', {'guest_accelerator_count': 'number', 'guest_accelerator_type': 'string'}]], 'deprecated': ['set', ['object', {'replacement': 'string', 'state': 'string'}]], 'description': 'string', 'guest_cpus': 'number', 'is_shared_cpus': 'bool', 'maximum_persistent_disks': 'number', 'maximum_persistent_disks_size_gb': 'number', 'memory_mb': 'number', 'name': 'string', 'self_link': 'string'}]] (Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
