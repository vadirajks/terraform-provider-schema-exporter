data "azurerm_dev_center_project_pool" "name" {
  dev_center_project_id = string (Required)
  name = string (Required)
  dev_box_definition_name = string (Computed)
  dev_center_attached_network_name = string (Computed)
  id = string (Optional, Computed)
  local_administrator_enabled = bool (Computed)
  location = string (Computed)
  single_sign_on_enabled = bool (Computed)
  stop_on_disconnect_grace_period_minutes = number (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
