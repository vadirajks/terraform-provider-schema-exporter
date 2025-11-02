resource "azurerm_redis_cache_access_policy" "name" {
  name = string (Required)
  permissions = string (Required)
  redis_cache_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
