resource "google_access_context_manager_access_policy_iam_member" "name" {
  member = string (Required)
  name = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
