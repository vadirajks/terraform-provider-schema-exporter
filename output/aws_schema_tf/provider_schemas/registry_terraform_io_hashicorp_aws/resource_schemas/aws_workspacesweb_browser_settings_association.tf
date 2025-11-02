resource "aws_workspacesweb_browser_settings_association" "name" {
  browser_settings_arn = string (Required)
  portal_arn = string (Required)
  region = string (Optional, Computed)
}
