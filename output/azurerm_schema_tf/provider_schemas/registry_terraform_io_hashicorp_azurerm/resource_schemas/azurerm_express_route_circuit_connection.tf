resource "azurerm_express_route_circuit_connection" "name" {
  address_prefix_ipv4 = string (Required)
  name = string (Required)
  peer_peering_id = string (Required)
  peering_id = string (Required)
  address_prefix_ipv6 = string (Optional)
  authorization_key = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
