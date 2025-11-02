resource "azurerm_log_analytics_data_export_rule" "name" {
  destination_resource_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  table_names = ['set', 'string'] (Required)
  workspace_resource_id = string (Required)
  enabled = bool (Optional)
  export_rule_id = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
