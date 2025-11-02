resource "google_cloudfunctions_function_iam_policy" "name" {
  cloud_function = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
