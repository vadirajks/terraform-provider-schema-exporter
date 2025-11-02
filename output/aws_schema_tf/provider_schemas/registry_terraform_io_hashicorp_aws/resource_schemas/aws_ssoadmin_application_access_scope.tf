resource "aws_ssoadmin_application_access_scope" "name" {
  application_arn = string (Required)
  scope = string (Required)
  authorized_targets = ['list', 'string'] (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
}
