resource "aws_workspacesweb_network_settings_association" "name" {
  network_settings_arn = string (Required)
  portal_arn = string (Required)
  region = string (Optional, Computed)
}
