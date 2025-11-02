resource "google_firestore_backup_schedule" "name" {
  retention = string (Required)
  database = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  daily_recurrence block "list" (Optional) {
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  weekly_recurrence block "list" (Optional) {
    day = string (Optional)
  }
}
