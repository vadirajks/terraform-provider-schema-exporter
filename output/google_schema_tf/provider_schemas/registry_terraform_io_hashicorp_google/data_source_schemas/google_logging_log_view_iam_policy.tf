data "google_logging_log_view_iam_policy" "name" {
  bucket = string (Required)
  name = string (Required)
  parent = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
}
