resource "google_dataplex_task_iam_binding" "name" {
  lake = string (Required)
  members = ['set', 'string'] (Required)
  role = string (Required)
  task_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
