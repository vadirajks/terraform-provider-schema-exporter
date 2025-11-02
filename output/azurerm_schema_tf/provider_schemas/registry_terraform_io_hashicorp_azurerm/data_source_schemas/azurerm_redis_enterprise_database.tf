data "azurerm_redis_enterprise_database" "name" {
  cluster_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  linked_database_group_nickname = string (Computed)
  linked_database_id = ['list', 'string'] (Computed)
  primary_access_key = string (Computed)
  secondary_access_key = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
