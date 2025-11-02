data "google_cloudfunctions_function_iam_policy" "name" {
  cloud_function = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
