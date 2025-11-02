data "google_sql_backup_run" "name" {
  instance = string (Required)
  backup_id = number (Optional, Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  most_recent = bool (Optional)
  project = string (Optional, Computed)
  start_time = string (Computed)
  status = string (Computed)
}
