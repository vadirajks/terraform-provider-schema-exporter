resource "azurerm_logic_app_integration_account_map" "name" {
  content = string (Required)
  integration_account_name = string (Required)
  map_type = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
