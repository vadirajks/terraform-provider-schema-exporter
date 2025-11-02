data "azurerm_virtual_network_peering" "name" {
  name = string (Required)
  virtual_network_id = string (Required)
  allow_forwarded_traffic = bool (Computed)
  allow_gateway_transit = bool (Computed)
  allow_virtual_network_access = bool (Computed)
  id = string (Optional, Computed)
  only_ipv6_peering_enabled = bool (Computed)
  peer_complete_virtual_networks_enabled = bool (Computed)
  remote_virtual_network_id = string (Computed)
  use_remote_gateways = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
