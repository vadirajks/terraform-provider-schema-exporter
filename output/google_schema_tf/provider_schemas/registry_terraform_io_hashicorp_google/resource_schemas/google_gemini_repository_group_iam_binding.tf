resource "google_gemini_repository_group_iam_binding" "name" {
  code_repository_index = string (Required)
  members = ['set', 'string'] (Required)
  repository_group_id = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
