resource "google_bigquery_bi_reservation" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  size = number (Optional)
  update_time = string (Computed)

  preferred_tables block "list" (Optional) {
    dataset_id = string (Optional)
    project_id = string (Optional)
    table_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
