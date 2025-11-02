resource "google_apigee_environment_iam_member" "name" {
  env_id = string (Required)
  member = string (Required)
  org_id = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
