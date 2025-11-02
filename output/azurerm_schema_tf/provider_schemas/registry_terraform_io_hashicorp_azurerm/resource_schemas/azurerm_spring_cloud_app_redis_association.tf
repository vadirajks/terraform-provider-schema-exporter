resource "azurerm_spring_cloud_app_redis_association" "name" {
  name = string (Required)
  redis_access_key = string (Required)
  redis_cache_id = string (Required)
  spring_cloud_app_id = string (Required)
  id = string (Optional, Computed)
  ssl_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
