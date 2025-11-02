resource "aws_workspacesweb_user_access_logging_settings_association" "name" {
  portal_arn = string (Required)
  user_access_logging_settings_arn = string (Required)
  region = string (Optional, Computed)
}
