resource "azurerm_api_management_gateway" "name" {
  api_management_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  location_data block "list" (Required) {
    name = string (Required)
    city = string (Optional)
    district = string (Optional)
    region = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
