resource "azurerm_dev_center_project_pool" "name" {
  dev_box_definition_name = string (Required)
  dev_center_attached_network_name = string (Required)
  dev_center_project_id = string (Required)
  local_administrator_enabled = bool (Required)
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  managed_virtual_network_regions = ['list', 'string'] (Optional)
  single_sign_on_enabled = bool (Optional)
  stop_on_disconnect_grace_period_minutes = number (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
