resource "azurerm_monitor_log_profile" "name" {
  categories = ['set', 'string'] (Required)
  locations = ['set', 'string'] (Required)
  name = string (Required)
  id = string (Optional, Computed)
  servicebus_rule_id = string (Optional)
  storage_account_id = string (Optional)

  retention_policy block "list"  (Required){
    enabled = bool (Required)
    days = number (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
