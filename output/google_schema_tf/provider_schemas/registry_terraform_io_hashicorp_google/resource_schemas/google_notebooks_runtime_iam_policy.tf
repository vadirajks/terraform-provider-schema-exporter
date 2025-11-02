resource "google_notebooks_runtime_iam_policy" "name" {
  policy_data = string (Required)
  runtime_name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
