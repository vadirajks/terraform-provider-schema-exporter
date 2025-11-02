resource "azurerm_redis_cache_access_policy_assignment" "name" {
  access_policy_name = string (Required)
  name = string (Required)
  object_id = string (Required)
  object_id_alias = string (Required)
  redis_cache_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
