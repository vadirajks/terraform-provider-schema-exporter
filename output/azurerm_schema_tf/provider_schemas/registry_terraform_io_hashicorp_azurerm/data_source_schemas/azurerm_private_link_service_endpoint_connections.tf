data "azurerm_private_link_service_endpoint_connections" "name" {
  resource_group_name = string (Required)
  service_id = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  private_endpoint_connections = ['list', ['object', {'action_required': 'string', 'connection_id': 'string', 'connection_name': 'string', 'description': 'string', 'private_endpoint_id': 'string', 'private_endpoint_name': 'string', 'status': 'string'}]] (Computed)
  service_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
