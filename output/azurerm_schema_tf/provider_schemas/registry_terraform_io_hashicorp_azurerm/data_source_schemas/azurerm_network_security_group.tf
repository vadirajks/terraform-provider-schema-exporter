data "azurerm_network_security_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  security_rule = ['list', ['object', {'access': 'string', 'description': 'string', 'destination_address_prefix': 'string', 'destination_address_prefixes': ['set', 'string'], 'destination_application_security_group_ids': ['set', 'string'], 'destination_port_range': 'string', 'destination_port_ranges': ['set', 'string'], 'direction': 'string', 'name': 'string', 'priority': 'number', 'protocol': 'string', 'source_address_prefix': 'string', 'source_address_prefixes': ['set', 'string'], 'source_application_security_group_ids': ['set', 'string'], 'source_port_range': 'string', 'source_port_ranges': ['set', 'string']}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
