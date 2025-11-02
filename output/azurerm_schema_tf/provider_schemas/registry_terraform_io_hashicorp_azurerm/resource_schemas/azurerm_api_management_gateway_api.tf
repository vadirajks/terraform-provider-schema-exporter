resource "azurerm_api_management_gateway_api" "name" {
  api_id = string (Required)
  gateway_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
