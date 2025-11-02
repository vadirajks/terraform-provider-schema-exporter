data "azurerm_managed_redis" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  customer_managed_key = ['list', ['object', {'key_vault_key_id': 'string', 'user_assigned_identity_id': 'string'}]] (Computed)
  default_database = ['list', ['object', {'access_keys_authentication_enabled': 'bool', 'client_protocol': 'string', 'clustering_policy': 'string', 'eviction_policy': 'string', 'geo_replication_group_name': 'string', 'geo_replication_linked_database_ids': ['set', 'string'], 'module': ['list', ['object', {'args': 'string', 'name': 'string', 'version': 'string'}]], 'port': 'number', 'primary_access_key': 'string', 'secondary_access_key': 'string'}]] (Computed)
  high_availability_enabled = bool (Computed)
  hostname = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
