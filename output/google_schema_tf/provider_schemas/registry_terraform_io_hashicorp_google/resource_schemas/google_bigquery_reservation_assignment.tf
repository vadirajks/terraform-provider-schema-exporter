resource "google_bigquery_reservation_assignment" "name" {
  assignee = string (Required)
  job_type = string (Required)
  reservation = string (Required)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
