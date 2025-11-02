resource "aws_workspacesweb_data_protection_settings_association" "name" {
  data_protection_settings_arn = string (Required)
  portal_arn = string (Required)
  region = string (Optional, Computed)
}
