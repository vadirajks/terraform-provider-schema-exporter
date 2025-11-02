resource "azurerm_local_network_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  address_space = ['list', 'string'] (Optional)
  gateway_address = string (Optional)
  gateway_fqdn = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  bgp_settings block "list" (Optional) {
    asn = number (Required)
    bgp_peering_address = string (Required)
    peer_weight = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
