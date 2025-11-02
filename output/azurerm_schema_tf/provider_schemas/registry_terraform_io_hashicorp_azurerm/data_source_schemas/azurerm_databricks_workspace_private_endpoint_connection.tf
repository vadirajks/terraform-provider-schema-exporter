data "azurerm_databricks_workspace_private_endpoint_connection" "name" {
  private_endpoint_id = string (Required)
  workspace_id = string (Required)
  connections = ['list', ['object', {'action_required': 'string', 'description': 'string', 'name': 'string', 'status': 'string', 'workspace_private_endpoint_id': 'string'}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
