resource "google_dataproc_autoscaling_policy_iam_policy" "name" {
  policy_data = string (Required)
  policy_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
