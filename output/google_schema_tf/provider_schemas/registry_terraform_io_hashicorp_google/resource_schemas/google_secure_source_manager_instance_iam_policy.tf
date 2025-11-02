resource "google_secure_source_manager_instance_iam_policy" "name" {
  instance_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
