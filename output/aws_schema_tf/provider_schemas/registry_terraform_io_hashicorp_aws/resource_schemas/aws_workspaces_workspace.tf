resource "aws_workspaces_workspace" "name" {
  bundle_id = string (Required)
  directory_id = string (Required)
  user_name = string (Required)
  computer_name = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  region = string (Optional, Computed)
  root_volume_encryption_enabled = bool (Optional)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_volume_encryption_enabled = bool (Optional)
  volume_encryption_key = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  workspace_properties block "list" (Optional) {
    compute_type_name = string (Optional)
    root_volume_size_gib = number (Optional)
    running_mode = string (Optional)
    running_mode_auto_stop_timeout_in_minutes = number (Optional, Computed)
    user_volume_size_gib = number (Optional)
  }
}
