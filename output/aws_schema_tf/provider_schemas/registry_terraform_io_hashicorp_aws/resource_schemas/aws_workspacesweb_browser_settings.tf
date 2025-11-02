resource "aws_workspacesweb_browser_settings" "name" {
  browser_policy = string (Required)
  additional_encryption_context = ['map', 'string'] (Optional)
  associated_portal_arns = ['list', 'string'] (Computed)
  browser_settings_arn = string (Computed)
  customer_managed_key = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
