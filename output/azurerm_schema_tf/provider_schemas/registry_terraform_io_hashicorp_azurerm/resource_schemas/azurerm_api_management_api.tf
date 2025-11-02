resource "azurerm_api_management_api" "name" {
  api_management_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  revision = string (Required)
  api_type = string (Optional, Computed)
  description = string (Optional)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  is_current = bool (Computed)
  is_online = bool (Computed)
  path = string (Optional, Computed)
  protocols = ['set', 'string'] (Optional, Computed)
  revision_description = string (Optional)
  service_url = string (Optional, Computed)
  source_api_id = string (Optional)
  subscription_required = bool (Optional)
  terms_of_service_url = string (Optional)
  version = string (Optional, Computed)
  version_description = string (Optional)
  version_set_id = string (Optional, Computed)

  contact block "list" (Optional) {
    email = string (Optional)
    name = string (Optional)
    url = string (Optional)
  }

  import block "list" (Optional) {
    content_format = string (Required)
    content_value = string (Required)

    wsdl_selector block "list" (Optional) {
      endpoint_name = string (Required)
      service_name = string (Required)
    }
  }

  license block "list" (Optional) {
    name = string (Optional)
    url = string (Optional)
  }

  oauth2_authorization block "list" (Optional) {
    authorization_server_name = string (Required)
    scope = string (Optional)
  }

  openid_authentication block "list" (Optional) {
    openid_provider_name = string (Required)
    bearer_token_sending_methods = ['set', 'string'] (Optional)
  }

  subscription_key_parameter_names block "list" (Optional) {
    header = string (Required)
    query = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
