resource "google_redis_instance" "name" {
  memory_size_gb = number (Required)
  name = string (Required)
  alternative_location_id = string (Optional, Computed)
  auth_enabled = bool (Optional)
  auth_string = string (Computed)
  authorized_network = string (Optional, Computed)
  connect_mode = string (Optional)
  create_time = string (Computed)
  current_location_id = string (Computed)
  customer_managed_key = string (Optional)
  deletion_protection = bool (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  effective_reserved_ip_range = string (Computed)
  host = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location_id = string (Optional, Computed)
  maintenance_schedule = ['list', ['object', {'end_time': 'string', 'schedule_deadline_time': 'string', 'start_time': 'string'}]] (Computed)
  maintenance_version = string (Optional, Computed)
  nodes = ['list', ['object', {'id': 'string', 'zone': 'string'}]] (Computed)
  persistence_iam_identity = string (Computed)
  port = number (Computed)
  project = string (Optional, Computed)
  read_endpoint = string (Computed)
  read_endpoint_port = number (Computed)
  read_replicas_mode = string (Optional, Computed)
  redis_configs = ['map', 'string'] (Optional)
  redis_version = string (Optional, Computed)
  region = string (Optional, Computed)
  replica_count = number (Optional, Computed)
  reserved_ip_range = string (Optional, Computed)
  secondary_ip_range = string (Optional, Computed)
  server_ca_certs = ['list', ['object', {'cert': 'string', 'create_time': 'string', 'expire_time': 'string', 'serial_number': 'string', 'sha1_fingerprint': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  tier = string (Optional)
  transit_encryption_mode = string (Optional)

  maintenance_policy block "list" (Optional) {
    create_time = string (Computed)
    description = string (Optional)
    update_time = string (Computed)

    weekly_maintenance_window block "list" (Optional) {
      day = string (Required)
      duration = string (Computed)

      start_time block "list" (Required) {
        hours = number (Optional)
        minutes = number (Optional)
        nanos = number (Optional)
        seconds = number (Optional)
      }
    }
  }

  persistence_config block "list" (Optional) {
    persistence_mode = string (Optional, Computed)
    rdb_next_snapshot_time = string (Computed)
    rdb_snapshot_period = string (Optional)
    rdb_snapshot_start_time = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
