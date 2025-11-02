resource "google_gemini_repository_group_iam_policy" "name" {
  code_repository_index = string (Required)
  policy_data = string (Required)
  repository_group_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
