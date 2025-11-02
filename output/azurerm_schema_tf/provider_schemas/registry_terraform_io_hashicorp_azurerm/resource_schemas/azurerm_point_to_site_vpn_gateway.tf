resource "azurerm_point_to_site_vpn_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scale_unit = number (Required)
  virtual_hub_id = string (Required)
  vpn_server_configuration_id = string (Required)
  dns_servers = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  routing_preference_internet_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  connection_configuration block "list" (Required) {
    name = string (Required)
    internet_security_enabled = bool (Optional)

    route block "list" (Optional) {
      associated_route_table_id = string (Required)
      inbound_route_map_id = string (Optional)
      outbound_route_map_id = string (Optional)

      propagated_route_table block "list" (Optional) {
        ids = ['list', 'string'] (Required)
        labels = ['set', 'string'] (Optional)
      }
    }

    vpn_client_address_pool block "list" (Required) {
      address_prefixes = ['set', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
