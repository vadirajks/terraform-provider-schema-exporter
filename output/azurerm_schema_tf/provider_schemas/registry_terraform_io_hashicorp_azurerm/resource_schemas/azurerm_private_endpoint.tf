resource "azurerm_private_endpoint" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  subnet_id = string (Required)
  custom_dns_configs = ['list', ['object', {'fqdn': 'string', 'ip_addresses': ['list', 'string']}]] (Computed)
  custom_network_interface_name = string (Optional)
  id = string (Optional, Computed)
  network_interface = ['list', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  private_dns_zone_configs = ['list', ['object', {'id': 'string', 'name': 'string', 'private_dns_zone_id': 'string', 'record_sets': ['list', ['object', {'fqdn': 'string', 'ip_addresses': ['list', 'string'], 'name': 'string', 'ttl': 'number', 'type': 'string'}]]}]] (Computed)
  tags = ['map', 'string'] (Optional)

  ip_configuration block "list" (Optional) {
    name = string (Required)
    private_ip_address = string (Required)
    member_name = string (Optional, Computed)
    subresource_name = string (Optional)
  }

  private_dns_zone_group block "list" (Optional) {
    name = string (Required)
    private_dns_zone_ids = ['list', 'string'] (Required)
    id = string (Computed)
  }

  private_service_connection block "list" (Required) {
    is_manual_connection = bool (Required)
    name = string (Required)
    private_connection_resource_alias = string (Optional)
    private_connection_resource_id = string (Optional)
    private_ip_address = string (Computed)
    request_message = string (Optional)
    subresource_names = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
