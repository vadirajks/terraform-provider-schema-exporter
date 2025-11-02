resource "azurerm_log_analytics_storage_insights" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  storage_account_id = string (Required)
  storage_account_key = string (Required)
  workspace_id = string (Required)
  blob_container_names = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  table_names = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
