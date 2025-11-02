data "google_access_context_manager_access_policy_iam_policy" "name" {
  name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
