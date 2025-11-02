data "google_iam_role" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  included_permissions = ['list', 'string'] (Computed)
  stage = string (Computed)
  title = string (Computed)
}
