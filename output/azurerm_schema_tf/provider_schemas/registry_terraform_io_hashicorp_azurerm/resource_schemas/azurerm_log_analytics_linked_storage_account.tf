resource "azurerm_log_analytics_linked_storage_account" "name" {
  data_source_type = string (Required)
  resource_group_name = string (Required)
  storage_account_ids = ['set', 'string'] (Required)
  id = string (Optional, Computed)
  workspace_id = string (Optional, Computed)
  workspace_resource_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
