resource "azurerm_redis_enterprise_database" "name" {
  cluster_id = string (Required)
  client_protocol = string (Optional)
  clustering_policy = string (Optional)
  eviction_policy = string (Optional)
  id = string (Optional, Computed)
  linked_database_group_nickname = string (Optional)
  linked_database_id = ['set', 'string'] (Optional)
  name = string (Optional)
  port = number (Optional)
  primary_access_key = string (Computed)
  secondary_access_key = string (Computed)

  module block "list" (Optional) {
    name = string (Required)
    args = string (Optional)
    version = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
