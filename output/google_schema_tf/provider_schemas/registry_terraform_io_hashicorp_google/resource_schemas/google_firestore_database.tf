resource "google_firestore_database" "name" {
  location_id = string (Required)
  name = string (Required)
  type = string (Required)
  app_engine_integration_mode = string (Optional, Computed)
  concurrency_mode = string (Optional, Computed)
  create_time = string (Computed)
  database_edition = string (Optional, Computed)
  delete_protection_state = string (Optional, Computed)
  deletion_policy = string (Optional)
  earliest_version_time = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  key_prefix = string (Computed)
  point_in_time_recovery_enablement = string (Optional)
  project = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  uid = string (Computed)
  update_time = string (Computed)
  version_retention_period = string (Computed)

  cmek_config block "list" (Optional) {
    kms_key_name = string (Required)
    active_key_version = ['list', 'string'] (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
