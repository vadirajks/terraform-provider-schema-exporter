data "azurerm_express_route_circuit_peering" "name" {
  express_route_circuit_name = string (Required)
  peering_type = string (Required)
  resource_group_name = string (Required)
  azure_asn = number (Computed)
  gateway_manager_etag = string (Computed)
  id = string (Optional, Computed)
  ipv4_enabled = bool (Computed)
  peer_asn = number (Computed)
  primary_azure_port = string (Computed)
  primary_peer_address_prefix = string (Computed)
  route_filter_id = string (Computed)
  secondary_azure_port = string (Computed)
  secondary_peer_address_prefix = string (Computed)
  shared_key = string (Computed)
  vlan_id = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
