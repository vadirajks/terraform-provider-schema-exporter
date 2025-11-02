resource "azurerm_api_connection" "name" {
  managed_api_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  parameter_values = ['map', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
