data "google_spanner_database" "name" {
  instance = string (Required)
  name = string (Required)
  database_dialect = string (Computed)
  ddl = ['list', 'string'] (Computed)
  default_time_zone = string (Computed)
  deletion_protection = bool (Computed)
  enable_drop_protection = bool (Computed)
  encryption_config = ['list', ['object', {'kms_key_name': 'string', 'kms_key_names': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
  state = string (Computed)
  version_retention_period = string (Computed)
}
