data "azurerm_express_route_circuit" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  peerings = ['list', ['object', {'azure_asn': 'number', 'peer_asn': 'number', 'peering_type': 'string', 'primary_peer_address_prefix': 'string', 'secondary_peer_address_prefix': 'string', 'shared_key': 'string', 'vlan_id': 'number'}]] (Computed)
  service_key = string (Computed)
  service_provider_properties = ['list', ['object', {'bandwidth_in_mbps': 'number', 'peering_location': 'string', 'service_provider_name': 'string'}]] (Computed)
  service_provider_provisioning_state = string (Computed)
  sku = ['list', ['object', {'family': 'string', 'tier': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
