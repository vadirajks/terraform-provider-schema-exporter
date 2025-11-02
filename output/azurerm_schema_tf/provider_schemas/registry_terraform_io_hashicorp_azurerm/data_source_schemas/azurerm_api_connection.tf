data "azurerm_api_connection" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  managed_api_id = string (Computed)
  parameter_values = ['map', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
