data "azurerm_route_table" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  bgp_route_propagation_enabled = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  route = ['list', ['object', {'address_prefix': 'string', 'name': 'string', 'next_hop_in_ip_address': 'string', 'next_hop_type': 'string'}]] (Computed)
  subnets = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
