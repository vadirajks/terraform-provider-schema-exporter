resource "azurerm_network_manager_deployment" "name" {
  configuration_ids = ['list', 'string'] (Required)
  location = string (Required)
  network_manager_id = string (Required)
  scope_access = string (Required)
  id = string (Optional, Computed)
  triggers = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
