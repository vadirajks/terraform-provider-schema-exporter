resource "google_logging_linked_dataset" "name" {
  bucket = string (Required)
  link_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  lifecycle_state = string (Computed)
  location = string (Optional, Computed)
  name = string (Computed)
  parent = string (Optional, Computed)

  bigquery_dataset block "list" (Optional) {
    dataset_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
