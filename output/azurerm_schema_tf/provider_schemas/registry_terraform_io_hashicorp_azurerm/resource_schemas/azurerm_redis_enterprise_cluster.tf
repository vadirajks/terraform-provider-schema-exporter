resource "azurerm_redis_enterprise_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  hostname = string (Computed)
  id = string (Optional, Computed)
  minimum_tls_version = string (Optional)
  tags = ['map', 'string'] (Optional)
  zones = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
