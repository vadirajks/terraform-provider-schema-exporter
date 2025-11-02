resource "google_organization_iam_custom_role" "name" {
  org_id = string (Required)
  permissions = ['set', 'string'] (Required)
  role_id = string (Required)
  title = string (Required)
  deleted = bool (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  stage = string (Optional)
}
