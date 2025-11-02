resource "azurerm_log_analytics_saved_search" "name" {
  category = string (Required)
  display_name = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  query = string (Required)
  function_alias = string (Optional)
  function_parameters = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
