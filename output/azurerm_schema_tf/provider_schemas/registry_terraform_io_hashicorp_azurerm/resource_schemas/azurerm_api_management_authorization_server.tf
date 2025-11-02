resource "azurerm_api_management_authorization_server" "name" {
  api_management_name = string (Required)
  authorization_endpoint = string (Required)
  authorization_methods = ['set', 'string'] (Required)
  client_id = string (Required)
  client_registration_endpoint = string (Required)
  display_name = string (Required)
  grant_types = ['set', 'string'] (Required)
  name = string (Required)
  resource_group_name = string (Required)
  bearer_token_sending_methods = ['set', 'string'] (Optional)
  client_authentication_method = ['set', 'string'] (Optional)
  client_secret = string (Optional)
  default_scope = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  resource_owner_password = string (Optional)
  resource_owner_username = string (Optional)
  support_state = bool (Optional)
  token_endpoint = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  token_body_parameter block "list" (Optional) {
    name = string (Required)
    value = string (Required)
  }
}
