data "google_sql_database_instance_latest_recovery_time" "name" {
  instance = string (Required)
  id = string (Optional, Computed)
  latest_recovery_time = string (Computed)
  project = string (Optional, Computed)
  source_instance_deletion_time = string (Optional)
}
