data "google_dataplex_task_iam_policy" "name" {
  lake = string (Required)
  task_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
