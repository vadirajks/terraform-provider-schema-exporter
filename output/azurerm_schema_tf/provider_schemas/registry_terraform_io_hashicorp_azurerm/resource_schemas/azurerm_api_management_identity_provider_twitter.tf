resource "azurerm_api_management_identity_provider_twitter" "name" {
  api_key = string (Required)
  api_management_name = string (Required)
  api_secret_key = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
