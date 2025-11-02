resource "azurerm_express_route_circuit_peering" "name" {
  express_route_circuit_name = string (Required)
  peering_type = string (Required)
  resource_group_name = string (Required)
  vlan_id = number (Required)
  azure_asn = number (Computed)
  gateway_manager_etag = string (Computed)
  id = string (Optional, Computed)
  ipv4_enabled = bool (Optional)
  peer_asn = number (Optional, Computed)
  primary_azure_port = string (Computed)
  primary_peer_address_prefix = string (Optional)
  route_filter_id = string (Optional)
  secondary_azure_port = string (Computed)
  secondary_peer_address_prefix = string (Optional)
  shared_key = string (Optional)

  ipv6 block "list" (Optional) {
    primary_peer_address_prefix = string (Required)
    secondary_peer_address_prefix = string (Required)
    enabled = bool (Optional)
    route_filter_id = string (Optional)

    microsoft_peering block "list" (Optional) {
      advertised_communities = ['list', 'string'] (Optional)
      advertised_public_prefixes = ['list', 'string'] (Optional)
      customer_asn = number (Optional)
      routing_registry_name = string (Optional)
    }
  }

  microsoft_peering_config block "list" (Optional) {
    advertised_public_prefixes = ['list', 'string'] (Required)
    advertised_communities = ['list', 'string'] (Optional)
    customer_asn = number (Optional)
    routing_registry_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
