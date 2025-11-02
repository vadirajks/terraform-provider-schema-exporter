resource "azurerm_route_table" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  bgp_route_propagation_enabled = bool (Optional)
  id = string (Optional, Computed)
  route = ['set', ['object', {'address_prefix': 'string', 'name': 'string', 'next_hop_in_ip_address': 'string', 'next_hop_type': 'string'}]] (Optional, Computed)
  subnets = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
