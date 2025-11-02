data "azurerm_network_manager" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  cross_tenant_scopes = ['list', ['object', {'management_groups': ['list', 'string'], 'subscriptions': ['list', 'string'], 'tenant_id': 'string'}]] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  scope = ['list', ['object', {'management_group_ids': ['list', 'string'], 'subscription_ids': ['list', 'string']}]] (Computed)
  scope_accesses = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
