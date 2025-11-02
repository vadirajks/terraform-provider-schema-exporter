data "azurerm_virtual_network_gateway" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  active_active = bool (Computed)
  bgp_settings = ['list', ['object', {'asn': 'number', 'peer_weight': 'number', 'peering_address': 'string'}]] (Computed)
  custom_route = ['list', ['object', {'address_prefixes': ['set', 'string']}]] (Computed)
  default_local_network_gateway_id = string (Computed)
  enable_bgp = bool (Computed)
  generation = string (Computed)
  id = string (Optional, Computed)
  ip_configuration = ['list', ['object', {'id': 'string', 'name': 'string', 'private_ip_address': 'string', 'private_ip_address_allocation': 'string', 'public_ip_address_id': 'string', 'subnet_id': 'string'}]] (Computed)
  location = string (Computed)
  private_ip_address_enabled = bool (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  type = string (Computed)
  vpn_client_configuration = ['list', ['object', {'aad_audience': 'string', 'aad_issuer': 'string', 'aad_tenant': 'string', 'address_space': ['list', 'string'], 'radius_server_address': 'string', 'radius_server_secret': 'string', 'revoked_certificate': ['list', ['object', {'name': 'string', 'thumbprint': 'string'}]], 'root_certificate': ['list', ['object', {'name': 'string', 'public_cert_data': 'string'}]], 'vpn_client_protocols': ['set', 'string']}]] (Computed)
  vpn_type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
