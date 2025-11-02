data "azurerm_consumption_budget_subscription" "name" {
  name = string (Required)
  subscription_id = string (Required)
  amount = number (Computed)
  filter = ['list', ['object', {'dimension': ['list', ['object', {'name': 'string', 'operator': 'string', 'values': ['list', 'string']}]], 'not': ['list', ['object', {'dimension': ['list', ['object', {'name': 'string', 'operator': 'string', 'values': ['list', 'string']}]], 'tag': ['list', ['object', {'name': 'string', 'operator': 'string', 'values': ['list', 'string']}]]}]], 'tag': ['list', ['object', {'name': 'string', 'operator': 'string', 'values': ['list', 'string']}]]}]] (Computed)
  id = string (Optional, Computed)
  notification = ['list', ['object', {'contact_emails': ['list', 'string'], 'contact_groups': ['list', 'string'], 'contact_roles': ['list', 'string'], 'enabled': 'bool', 'operator': 'string', 'threshold': 'number', 'threshold_type': 'string'}]] (Computed)
  time_grain = string (Computed)
  time_period = ['list', ['object', {'end_date': 'string', 'start_date': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
