resource "azurerm_virtual_hub_bgp_connection" "name" {
  name = string (Required)
  peer_asn = number (Required)
  peer_ip = string (Required)
  virtual_hub_id = string (Required)
  id = string (Optional, Computed)
  virtual_network_connection_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
