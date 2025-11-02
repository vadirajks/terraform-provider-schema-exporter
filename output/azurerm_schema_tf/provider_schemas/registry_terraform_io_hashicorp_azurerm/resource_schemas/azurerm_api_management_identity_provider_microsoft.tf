resource "azurerm_api_management_identity_provider_microsoft" "name" {
  api_management_name = string (Required)
  client_id = string (Required)
  client_secret = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
