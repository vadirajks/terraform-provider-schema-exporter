data "google_project_iam_custom_role" "name" {
  role_id = string (Required)
  deleted = bool (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  permissions = ['set', 'string'] (Computed)
  project = string (Optional)
  stage = string (Computed)
  title = string (Computed)
}
