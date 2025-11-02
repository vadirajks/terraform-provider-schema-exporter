data "google_apigee_environment_iam_policy" "name" {
  env_id = string (Required)
  org_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
