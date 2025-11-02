resource "azurerm_log_analytics_linked_service" "name" {
  resource_group_name = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  read_access_id = string (Optional, Computed)
  write_access_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
