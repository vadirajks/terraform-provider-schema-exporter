resource "azurerm_managed_redis_geo_replication" "name" {
  linked_managed_redis_ids = ['set', 'string'] (Required)
  managed_redis_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
