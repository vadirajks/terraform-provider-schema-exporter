resource "google_spanner_backup_schedule" "name" {
  database = string (Required)
  instance = string (Required)
  retention_duration = string (Required)
  id = string (Optional, Computed)
  name = string (Optional)
  project = string (Optional, Computed)

  encryption_config block "list" (Optional) {
    encryption_type = string (Required)
    kms_key_name = string (Optional)
    kms_key_names = ['list', 'string'] (Optional)
  }

  full_backup_spec block "list" (Optional) {
  }

  incremental_backup_spec block "list" (Optional) {
  }

  spec block "list" (Optional) {

    cron_spec block "list" (Optional) {
      text = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
