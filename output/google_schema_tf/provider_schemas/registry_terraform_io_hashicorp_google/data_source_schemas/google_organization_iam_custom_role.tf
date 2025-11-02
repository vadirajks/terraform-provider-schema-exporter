data "google_organization_iam_custom_role" "name" {
  org_id = string (Required)
  role_id = string (Required)
  deleted = bool (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  permissions = ['set', 'string'] (Computed)
  stage = string (Computed)
  title = string (Computed)
}
