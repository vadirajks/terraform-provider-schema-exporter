data "azurerm_api_management_gateway" "name" {
  api_management_id = string (Required)
  name = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  location_data = ['list', ['object', {'city': 'string', 'district': 'string', 'name': 'string', 'region': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
