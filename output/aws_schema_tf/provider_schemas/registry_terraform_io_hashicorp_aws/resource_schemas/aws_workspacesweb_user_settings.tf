resource "aws_workspacesweb_user_settings" "name" {
  copy_allowed = string (Required)
  download_allowed = string (Required)
  paste_allowed = string (Required)
  print_allowed = string (Required)
  upload_allowed = string (Required)
  additional_encryption_context = ['map', 'string'] (Optional)
  associated_portal_arns = ['list', 'string'] (Computed)
  customer_managed_key = string (Optional)
  deep_link_allowed = string (Optional, Computed)
  disconnect_timeout_in_minutes = number (Optional)
  idle_disconnect_timeout_in_minutes = number (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  user_settings_arn = string (Computed)

  cookie_synchronization_configuration block "list" (Optional) {

    allowlist block "list" (Optional) {
      domain = string (Required)
      name = string (Optional)
      path = string (Optional)
    }

    blocklist block "list" (Optional) {
      domain = string (Required)
      name = string (Optional)
      path = string (Optional)
    }
  }

  toolbar_configuration block "list" (Optional) {
    hidden_toolbar_items = ['list', 'string'] (Optional)
    max_display_resolution = string (Optional)
    toolbar_type = string (Optional)
    visual_mode = string (Optional)
  }
}
