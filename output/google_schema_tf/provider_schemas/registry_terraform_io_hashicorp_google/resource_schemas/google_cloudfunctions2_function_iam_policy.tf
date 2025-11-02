resource "google_cloudfunctions2_function_iam_policy" "name" {
  cloud_function = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
