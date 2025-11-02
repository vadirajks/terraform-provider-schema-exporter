data "azurerm_mobile_network_packet_core_data_plane" "name" {
  mobile_network_packet_core_control_plane_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  user_plane_access_ipv4_address = string (Computed)
  user_plane_access_ipv4_gateway = string (Computed)
  user_plane_access_ipv4_subnet = string (Computed)
  user_plane_access_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
