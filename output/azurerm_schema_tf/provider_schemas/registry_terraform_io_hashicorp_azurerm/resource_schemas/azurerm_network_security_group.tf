resource "azurerm_network_security_group" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  security_rule = ['set', ['object', {'access': 'string', 'description': 'string', 'destination_address_prefix': 'string', 'destination_address_prefixes': ['set', 'string'], 'destination_application_security_group_ids': ['set', 'string'], 'destination_port_range': 'string', 'destination_port_ranges': ['set', 'string'], 'direction': 'string', 'name': 'string', 'priority': 'number', 'protocol': 'string', 'source_address_prefix': 'string', 'source_address_prefixes': ['set', 'string'], 'source_application_security_group_ids': ['set', 'string'], 'source_port_range': 'string', 'source_port_ranges': ['set', 'string']}]] (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
