data "azurerm_private_endpoint_connection" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  network_interface = ['list', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  private_service_connection = ['list', ['object', {'name': 'string', 'private_ip_address': 'string', 'request_response': 'string', 'status': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
