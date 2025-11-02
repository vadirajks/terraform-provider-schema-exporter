resource "azurerm_redis_firewall_rule" "name" {
  end_ip = string (Required)
  name = string (Required)
  redis_cache_name = string (Required)
  resource_group_name = string (Required)
  start_ip = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
