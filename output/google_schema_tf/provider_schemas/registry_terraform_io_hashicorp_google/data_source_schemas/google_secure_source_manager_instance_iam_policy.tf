data "google_secure_source_manager_instance_iam_policy" "name" {
  instance_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
