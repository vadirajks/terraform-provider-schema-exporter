resource "google_memcache_instance" "name" {
  name = string (Required)
  node_count = number (Required)
  authorized_network = string (Optional, Computed)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  discovery_endpoint = string (Computed)
  display_name = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  maintenance_schedule = ['list', ['object', {'end_time': 'string', 'schedule_deadline_time': 'string', 'start_time': 'string'}]] (Computed)
  memcache_full_version = string (Computed)
  memcache_nodes = ['list', ['object', {'host': 'string', 'node_id': 'string', 'port': 'number', 'state': 'string', 'zone': 'string'}]] (Computed)
  memcache_version = string (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  reserved_ip_range_id = ['list', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  zones = ['set', 'string'] (Optional, Computed)

  maintenance_policy block "list" (Optional) {
    create_time = string (Computed)
    description = string (Optional)
    update_time = string (Computed)

    weekly_maintenance_window block "list" (Required) {
      day = string (Required)
      duration = string (Required)

      start_time block "list" (Required) {
        hours = number (Optional)
        minutes = number (Optional)
        nanos = number (Optional)
        seconds = number (Optional)
      }
    }
  }

  memcache_parameters block "list" (Optional) {
    id = string (Computed)
    params = ['map', 'string'] (Optional)
  }

  node_config block "list" (Required) {
    cpu_count = number (Required)
    memory_size_mb = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
