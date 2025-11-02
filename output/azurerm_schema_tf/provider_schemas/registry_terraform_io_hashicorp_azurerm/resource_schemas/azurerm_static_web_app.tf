resource "azurerm_static_web_app" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  api_key = string (Computed)
  app_settings = ['map', 'string'] (Optional)
  configuration_file_changes_enabled = bool (Optional)
  default_host_name = string (Computed)
  id = string (Optional, Computed)
  preview_environments_enabled = bool (Optional)
  public_network_access_enabled = bool (Optional)
  repository_branch = string (Optional)
  repository_token = string (Optional)
  repository_url = string (Optional)
  sku_size = string (Optional)
  sku_tier = string (Optional)
  tags = ['map', 'string'] (Optional)

  basic_auth block "list" (Optional) {
    environments = string (Required)
    password = string (Required)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
