resource "azurerm_network_manager" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  cross_tenant_scopes = ['list', ['object', {'management_groups': ['list', 'string'], 'subscriptions': ['list', 'string'], 'tenant_id': 'string'}]] (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  scope_accesses = ['list', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)

  scope block "list" (Required) {
    management_group_ids = ['list', 'string'] (Optional)
    subscription_ids = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
