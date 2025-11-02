resource "google_spanner_database" "name" {
  instance = string (Required)
  name = string (Required)
  database_dialect = string (Optional, Computed)
  ddl = ['list', 'string'] (Optional)
  default_time_zone = string (Optional)
  deletion_protection = bool (Optional)
  enable_drop_protection = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  version_retention_period = string (Optional, Computed)

  encryption_config block "list" (Optional) {
    kms_key_name = string (Optional)
    kms_key_names = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
