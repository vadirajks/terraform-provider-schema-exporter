resource "aws_workspacesweb_ip_access_settings_association" "name" {
  ip_access_settings_arn = string (Required)
  portal_arn = string (Required)
  region = string (Optional, Computed)
}
