data "azurerm_virtual_hub_connection" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  virtual_hub_name = string (Required)
  id = string (Optional, Computed)
  internet_security_enabled = bool (Computed)
  remote_virtual_network_id = string (Computed)
  routing = ['list', ['object', {'associated_route_table_id': 'string', 'inbound_route_map_id': 'string', 'outbound_route_map_id': 'string', 'propagated_route_table': ['list', ['object', {'labels': ['list', 'string'], 'route_table_ids': ['list', 'string']}]], 'static_vnet_local_route_override_criteria': 'string', 'static_vnet_propagate_static_routes_enabled': 'bool', 'static_vnet_route': ['list', ['object', {'address_prefixes': ['list', 'string'], 'name': 'string', 'next_hop_ip_address': 'string'}]]}]] (Computed)
  virtual_hub_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
