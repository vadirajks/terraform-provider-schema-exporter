data "azurerm_dynatrace_monitor" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  environment_properties = ['list', ['object', {'environment_info': ['list', ['object', {'environment_id': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  marketplace_subscription = string (Computed)
  monitoring_enabled = bool (Computed)
  plan = ['list', ['object', {'billing_cycle': 'string', 'effective_date': 'string', 'plan': 'string', 'usage_type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  user = ['list', ['object', {'country': 'string', 'email': 'string', 'first_name': 'string', 'last_name': 'string', 'phone_number': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
