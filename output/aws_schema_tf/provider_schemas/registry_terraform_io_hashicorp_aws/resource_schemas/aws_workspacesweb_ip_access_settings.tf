resource "aws_workspacesweb_ip_access_settings" "name" {
  display_name = string (Required)
  additional_encryption_context = ['map', 'string'] (Optional)
  associated_portal_arns = ['list', 'string'] (Computed)
  customer_managed_key = string (Optional)
  description = string (Optional)
  ip_access_settings_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  ip_rule block "list" (Optional) {
    ip_range = string (Required)
    description = string (Optional)
  }
}
