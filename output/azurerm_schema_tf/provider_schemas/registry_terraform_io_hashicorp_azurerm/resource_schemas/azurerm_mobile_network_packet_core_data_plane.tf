resource "azurerm_mobile_network_packet_core_data_plane" "name" {
  location = string (Required)
  mobile_network_packet_core_control_plane_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  user_plane_access_ipv4_address = string (Optional)
  user_plane_access_ipv4_gateway = string (Optional)
  user_plane_access_ipv4_subnet = string (Optional)
  user_plane_access_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
