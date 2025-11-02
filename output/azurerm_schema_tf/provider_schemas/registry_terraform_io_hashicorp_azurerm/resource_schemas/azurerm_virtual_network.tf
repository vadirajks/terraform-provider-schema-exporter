resource "azurerm_virtual_network" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  address_space = ['set', 'string'] (Optional)
  bgp_community = string (Optional)
  dns_servers = ['list', 'string'] (Optional, Computed)
  edge_zone = string (Optional)
  flow_timeout_in_minutes = number (Optional)
  guid = string (Computed)
  id = string (Optional, Computed)
  private_endpoint_vnet_policies = string (Optional)
  subnet = ['set', ['object', {'address_prefixes': ['list', 'string'], 'default_outbound_access_enabled': 'bool', 'delegation': ['list', ['object', {'name': 'string', 'service_delegation': ['list', ['object', {'actions': ['set', 'string'], 'name': 'string'}]]}]], 'id': 'string', 'name': 'string', 'private_endpoint_network_policies': 'string', 'private_link_service_network_policies_enabled': 'bool', 'route_table_id': 'string', 'security_group': 'string', 'service_endpoint_policy_ids': ['set', 'string'], 'service_endpoints': ['set', 'string']}]] (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  ddos_protection_plan block "list" (Optional) {
    enable = bool (Required)
    id = string (Required)
  }

  encryption block "list" (Optional) {
    enforcement = string (Required)
  }

  ip_address_pool block "list" (Optional) {
    id = string (Required)
    number_of_ip_addresses = string (Required)
    allocated_ip_address_prefixes = ['list', 'string'] (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
