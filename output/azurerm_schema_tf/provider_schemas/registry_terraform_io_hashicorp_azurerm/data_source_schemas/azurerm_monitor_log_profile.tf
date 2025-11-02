data "azurerm_monitor_log_profile" "name" {
  name = string (Required)
  categories = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  locations = ['list', 'string'] (Computed)
  retention_policy = ['list', ['object', {'days': 'number', 'enabled': 'bool'}]] (Computed)
  servicebus_rule_id = string (Computed)
  storage_account_id = string (Computed)

  timeouts block "single"  (Optional){
    read = string (Optional)
  }
}
