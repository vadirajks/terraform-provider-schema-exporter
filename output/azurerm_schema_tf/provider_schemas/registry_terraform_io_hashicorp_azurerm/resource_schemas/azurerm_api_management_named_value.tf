resource "azurerm_api_management_named_value" "name" {
  api_management_name = string (Required)
  display_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  secret = bool (Optional)
  tags = ['list', 'string'] (Optional)
  value = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  value_from_key_vault block "list" (Optional) {
    secret_id = string (Required)
    identity_client_id = string (Optional)
  }
}
