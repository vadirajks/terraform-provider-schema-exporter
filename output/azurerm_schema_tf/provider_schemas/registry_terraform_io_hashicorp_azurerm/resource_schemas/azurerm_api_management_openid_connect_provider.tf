resource "azurerm_api_management_openid_connect_provider" "name" {
  api_management_name = string (Required)
  client_id = string (Required)
  client_secret = string (Required)
  display_name = string (Required)
  metadata_endpoint = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
