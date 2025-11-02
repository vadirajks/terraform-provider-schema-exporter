resource "azurerm_synapse_workspace_extended_auditing_policy" "name" {
  synapse_workspace_id = string (Required)
  id = string (Optional, Computed)
  log_monitoring_enabled = bool (Optional)
  retention_in_days = number (Optional)
  storage_account_access_key = string (Optional)
  storage_account_access_key_is_secondary = bool (Optional)
  storage_endpoint = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
