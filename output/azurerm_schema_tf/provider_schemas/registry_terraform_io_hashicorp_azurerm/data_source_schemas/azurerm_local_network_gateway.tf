data "azurerm_local_network_gateway" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  address_space = ['list', 'string'] (Computed)
  bgp_settings = ['list', ['object', {'asn': 'number', 'bgp_peering_address': 'string', 'peer_weight': 'number'}]] (Computed)
  gateway_address = string (Computed)
  gateway_fqdn = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
