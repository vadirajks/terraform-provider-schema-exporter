resource "azurerm_express_route_connection" "name" {
  express_route_circuit_peering_id = string (Required)
  express_route_gateway_id = string (Required)
  name = string (Required)
  authorization_key = string (Optional)
  enable_internet_security = bool (Optional)
  express_route_gateway_bypass_enabled = bool (Optional)
  id = string (Optional, Computed)
  private_link_fast_path_enabled = bool (Optional)
  routing_weight = number (Optional)

  routing block "list" (Optional) {
    associated_route_table_id = string (Optional, Computed)
    inbound_route_map_id = string (Optional)
    outbound_route_map_id = string (Optional)

    propagated_route_table block "list" (Optional) {
      labels = ['set', 'string'] (Optional, Computed)
      route_table_ids = ['list', 'string'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
