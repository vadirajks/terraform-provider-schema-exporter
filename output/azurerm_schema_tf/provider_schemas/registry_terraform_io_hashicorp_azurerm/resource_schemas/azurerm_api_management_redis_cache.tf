resource "azurerm_api_management_redis_cache" "name" {
  api_management_id = string (Required)
  connection_string = string (Required)
  name = string (Required)
  cache_location = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  redis_cache_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
