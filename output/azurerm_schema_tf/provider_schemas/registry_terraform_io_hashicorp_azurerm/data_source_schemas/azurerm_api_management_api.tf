data "azurerm_api_management_api" "name" {
  api_management_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  revision = string (Required)
  description = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  is_current = bool (Computed)
  is_online = bool (Computed)
  path = string (Computed)
  protocols = ['list', 'string'] (Computed)
  service_url = string (Computed)
  soap_pass_through = bool (Computed)
  subscription_key_parameter_names = ['list', ['object', {'header': 'string', 'query': 'string'}]] (Computed)
  subscription_required = bool (Computed)
  version = string (Computed)
  version_set_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
