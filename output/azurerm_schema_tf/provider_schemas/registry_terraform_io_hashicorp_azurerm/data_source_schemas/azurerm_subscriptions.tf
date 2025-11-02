data "azurerm_subscriptions" "name" {
  display_name_contains = string (Optional)
  display_name_prefix = string (Optional)
  id = string (Optional, Computed)
  subscriptions = ['list', ['object', {'display_name': 'string', 'id': 'string', 'location_placement_id': 'string', 'quota_id': 'string', 'spending_limit': 'string', 'state': 'string', 'subscription_id': 'string', 'tags': ['map', 'string'], 'tenant_id': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
