resource "aws_fsx_ontap_volume" "name" {
  name = string (Required)
  storage_virtual_machine_id = string (Required)
  arn = string (Computed)
  bypass_snaplock_enterprise_retention = bool (Optional)
  copy_tags_to_backups = bool (Optional)
  file_system_id = string (Computed)
  final_backup_tags = ['map', 'string'] (Optional)
  flexcache_endpoint_type = string (Computed)
  id = string (Optional, Computed)
  junction_path = string (Optional)
  ontap_volume_type = string (Optional, Computed)
  region = string (Optional, Computed)
  security_style = string (Optional, Computed)
  size_in_bytes = string (Optional, Computed)
  size_in_megabytes = number (Optional, Computed)
  skip_final_backup = bool (Optional)
  snapshot_policy = string (Optional, Computed)
  storage_efficiency_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uuid = string (Computed)
  volume_style = string (Optional, Computed)
  volume_type = string (Optional)

  aggregate_configuration block "list" (Optional) {
    aggregates = ['list', 'string'] (Optional, Computed)
    constituents_per_aggregate = number (Optional, Computed)
    total_constituents = number (Computed)
  }

  snaplock_configuration block "list" (Optional) {
    snaplock_type = string (Required)
    audit_log_volume = bool (Optional)
    privileged_delete = string (Optional)
    volume_append_mode_enabled = bool (Optional)

    autocommit_period block "list" (Optional) {
      type = string (Optional, Computed)
      value = number (Optional)
    }

    retention_period block "list" (Optional) {

      default_retention block "list" (Optional) {
        type = string (Optional, Computed)
        value = number (Optional)
      }

      maximum_retention block "list" (Optional) {
        type = string (Optional, Computed)
        value = number (Optional)
      }

      minimum_retention block "list" (Optional) {
        type = string (Optional, Computed)
        value = number (Optional)
      }
    }
  }

  tiering_policy block "list" (Optional) {
    cooling_period = number (Optional, Computed)
    name = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
