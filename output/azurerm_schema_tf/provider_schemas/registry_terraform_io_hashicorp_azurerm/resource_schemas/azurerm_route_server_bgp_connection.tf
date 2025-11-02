resource "azurerm_route_server_bgp_connection" "name" {
  name = string (Required)
  peer_asn = number (Required)
  peer_ip = string (Required)
  route_server_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
