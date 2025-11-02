resource "azurerm_virtual_network_peering" "name" {
  name = string (Required)
  remote_virtual_network_id = string (Required)
  resource_group_name = string (Required)
  virtual_network_name = string (Required)
  allow_forwarded_traffic = bool (Optional)
  allow_gateway_transit = bool (Optional)
  allow_virtual_network_access = bool (Optional)
  id = string (Optional, Computed)
  local_subnet_names = ['list', 'string'] (Optional)
  only_ipv6_peering_enabled = bool (Optional)
  peer_complete_virtual_networks_enabled = bool (Optional)
  remote_subnet_names = ['list', 'string'] (Optional)
  triggers = ['map', 'string'] (Optional)
  use_remote_gateways = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
