resource "azurerm_api_management_identity_provider_aad" "name" {
  allowed_tenants = ['list', 'string'] (Required)
  api_management_name = string (Required)
  client_id = string (Required)
  client_secret = string (Required)
  resource_group_name = string (Required)
  client_library = string (Optional)
  id = string (Optional, Computed)
  signin_tenant = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
