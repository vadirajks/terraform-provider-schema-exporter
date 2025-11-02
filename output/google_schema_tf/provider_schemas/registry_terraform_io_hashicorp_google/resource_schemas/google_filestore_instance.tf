resource "google_filestore_instance" "name" {
  name = string (Required)
  tier = string (Required)
  create_time = string (Computed)
  deletion_protection_enabled = bool (Optional)
  deletion_protection_reason = string (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  effective_replication = ['list', ['object', {'replicas': ['list', ['object', {'last_active_sync_time': 'string', 'peer_instance': 'string', 'state': 'string', 'state_reasons': ['list', 'string']}]], 'role': 'string'}]] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  labels = ['map', 'string'] (Optional)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
  protocol = string (Optional)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  zone = string (Optional, Computed)

  file_shares block "list" (Required) {
    capacity_gb = number (Required)
    name = string (Required)
    source_backup = string (Optional)

    nfs_export_options block "list" (Optional) {
      access_mode = string (Optional)
      anon_gid = number (Optional)
      anon_uid = number (Optional)
      ip_ranges = ['list', 'string'] (Optional)
      network = string (Optional)
      squash_mode = string (Optional)
    }
  }

  initial_replication block "list" (Optional) {
    role = string (Optional)

    replicas block "list" (Optional) {
      peer_instance = string (Required)
    }
  }

  networks block "list" (Required) {
    modes = ['list', 'string'] (Required)
    network = string (Required)
    connect_mode = string (Optional)
    ip_addresses = ['list', 'string'] (Computed)
    reserved_ip_range = string (Optional, Computed)

    psc_config block "list" (Optional) {
      endpoint_project = string (Optional)
    }
  }

  performance_config block "list" (Optional) {

    fixed_iops block "list" (Optional) {
      max_iops = number (Optional)
    }

    iops_per_tb block "list" (Optional) {
      max_iops_per_tb = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
