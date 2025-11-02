resource "google_access_context_manager_access_policy_iam_policy" "name" {
  name = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
