data "azurerm_mobile_network_attached_data_network" "name" {
  mobile_network_data_network_name = string (Required)
  mobile_network_packet_core_data_plane_id = string (Required)
  dns_addresses = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  network_address_port_translation = ['list', ['object', {'icmp_pinhole_timeout_in_seconds': 'number', 'pinhole_maximum_number': 'number', 'port_range': ['list', ['object', {'maximum': 'number', 'minimum': 'number'}]], 'tcp_pinhole_timeout_in_seconds': 'number', 'tcp_port_reuse_minimum_hold_time_in_seconds': 'number', 'udp_pinhole_timeout_in_seconds': 'number', 'udp_port_reuse_minimum_hold_time_in_seconds': 'number'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  user_equipment_address_pool_prefixes = ['list', 'string'] (Computed)
  user_equipment_static_address_pool_prefixes = ['list', 'string'] (Computed)
  user_plane_access_ipv4_address = string (Computed)
  user_plane_access_ipv4_gateway = string (Computed)
  user_plane_access_ipv4_subnet = string (Computed)
  user_plane_access_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
