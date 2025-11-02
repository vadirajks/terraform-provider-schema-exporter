resource "azurerm_mobile_network_attached_data_network" "name" {
  dns_addresses = ['list', 'string'] (Required)
  location = string (Required)
  mobile_network_data_network_name = string (Required)
  mobile_network_packet_core_data_plane_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  user_equipment_address_pool_prefixes = ['list', 'string'] (Optional)
  user_equipment_static_address_pool_prefixes = ['list', 'string'] (Optional)
  user_plane_access_ipv4_address = string (Optional)
  user_plane_access_ipv4_gateway = string (Optional)
  user_plane_access_ipv4_subnet = string (Optional)
  user_plane_access_name = string (Optional)

  network_address_port_translation block "list" (Optional) {
    icmp_pinhole_timeout_in_seconds = number (Optional)
    pinhole_maximum_number = number (Optional)
    tcp_pinhole_timeout_in_seconds = number (Optional)
    tcp_port_reuse_minimum_hold_time_in_seconds = number (Optional)
    udp_pinhole_timeout_in_seconds = number (Optional)
    udp_port_reuse_minimum_hold_time_in_seconds = number (Optional)

    port_range block "list" (Optional) {
      maximum = number (Optional)
      minimum = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
