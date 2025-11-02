resource "azurerm_static_site" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  api_key = string (Computed)
  app_settings = ['map', 'string'] (Optional)
  default_host_name = string (Computed)
  id = string (Optional, Computed)
  sku_size = string (Optional)
  sku_tier = string (Optional)
  tags = ['map', 'string'] (Optional)

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
