resource "azurerm_redis_linked_server" "name" {
  linked_redis_cache_id = string (Required)
  linked_redis_cache_location = string (Required)
  resource_group_name = string (Required)
  server_role = string (Required)
  target_redis_cache_name = string (Required)
  geo_replicated_primary_host_name = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
