resource "google_bigtable_table" "name" {
  instance_name = string (Required)
  name = string (Required)
  change_stream_retention = string (Optional, Computed)
  deletion_protection = string (Optional, Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  row_key_schema = string (Optional)
  split_keys = ['list', 'string'] (Optional)

  automated_backup_policy block "set" (Optional) {
    frequency = string (Optional, Computed)
    retention_period = string (Optional, Computed)
  }

  column_family block "set" (Optional) {
    family = string (Required)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
