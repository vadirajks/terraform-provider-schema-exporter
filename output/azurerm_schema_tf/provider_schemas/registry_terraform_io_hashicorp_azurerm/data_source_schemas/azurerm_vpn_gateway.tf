data "azurerm_vpn_gateway" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  bgp_settings = ['list', ['object', {'asn': 'number', 'bgp_peering_address': 'string', 'instance_0_bgp_peering_address': ['list', ['object', {'custom_ips': ['list', 'string'], 'default_ips': ['list', 'string'], 'ip_configuration_id': 'string', 'tunnel_ips': ['list', 'string']}]], 'instance_1_bgp_peering_address': ['list', ['object', {'custom_ips': ['list', 'string'], 'default_ips': ['list', 'string'], 'ip_configuration_id': 'string', 'tunnel_ips': ['list', 'string']}]], 'peer_weight': 'number'}]] (Computed)
  id = string (Optional, Computed)
  ip_configuration = ['list', ['object', {'id': 'string', 'private_ip_address': 'string', 'public_ip_address': 'string'}]] (Computed)
  location = string (Computed)
  scale_unit = number (Computed)
  tags = ['map', 'string'] (Computed)
  virtual_hub_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
