resource "azurerm_network_watcher_flow_log" "name" {
  enabled = bool (Required)
  name = string (Required)
  network_watcher_name = string (Required)
  resource_group_name = string (Required)
  storage_account_id = string (Required)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  network_security_group_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  target_resource_id = string (Optional, Computed)
  version = number (Optional)

  retention_policy block "list" (Required) {
    days = number (Required)
    enabled = bool (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  traffic_analytics block "list" (Optional) {
    enabled = bool (Required)
    workspace_id = string (Required)
    workspace_region = string (Required)
    workspace_resource_id = string (Required)
    interval_in_minutes = number (Optional)
  }
}
