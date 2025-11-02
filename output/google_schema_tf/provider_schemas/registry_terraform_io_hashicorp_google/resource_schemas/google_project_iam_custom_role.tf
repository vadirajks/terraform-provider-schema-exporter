resource "google_project_iam_custom_role" "name" {
  permissions = ['set', 'string'] (Required)
  role_id = string (Required)
  title = string (Required)
  deleted = bool (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  stage = string (Optional)
}
