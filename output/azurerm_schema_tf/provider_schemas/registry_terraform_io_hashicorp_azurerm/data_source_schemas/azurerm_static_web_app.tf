data "azurerm_static_web_app" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  api_key = string (Computed)
  app_settings = ['map', 'string'] (Computed)
  basic_auth = ['list', ['object', {'environments': 'string'}]] (Computed)
  configuration_file_changes_enabled = bool (Computed)
  default_host_name = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  preview_environments_enabled = bool (Computed)
  public_network_access_enabled = bool (Computed)
  repository_branch = string (Computed)
  repository_url = string (Computed)
  sku_size = string (Computed)
  sku_tier = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
