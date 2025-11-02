resource "azurerm_virtual_hub_connection" "name" {
  name = string (Required)
  remote_virtual_network_id = string (Required)
  virtual_hub_id = string (Required)
  id = string (Optional, Computed)
  internet_security_enabled = bool (Optional)

  routing block "list" (Optional) {
    associated_route_table_id = string (Optional, Computed)
    inbound_route_map_id = string (Optional)
    outbound_route_map_id = string (Optional)
    static_vnet_local_route_override_criteria = string (Optional)
    static_vnet_propagate_static_routes_enabled = bool (Optional)

    propagated_route_table block "list" (Optional) {
      labels = ['set', 'string'] (Optional, Computed)
      route_table_ids = ['list', 'string'] (Optional, Computed)
    }

    static_vnet_route block "list" (Optional) {
      address_prefixes = ['set', 'string'] (Optional)
      name = string (Optional)
      next_hop_ip_address = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
