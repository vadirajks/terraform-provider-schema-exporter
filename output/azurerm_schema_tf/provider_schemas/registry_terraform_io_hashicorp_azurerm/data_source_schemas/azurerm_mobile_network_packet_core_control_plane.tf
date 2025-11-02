data "azurerm_mobile_network_packet_core_control_plane" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  control_plane_access_ipv4_address = string (Computed)
  control_plane_access_ipv4_gateway = string (Computed)
  control_plane_access_ipv4_subnet = string (Computed)
  control_plane_access_name = string (Computed)
  core_network_technology = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'type': 'string'}]] (Computed)
  interoperability_settings_json = string (Computed)
  local_diagnostics_access = ['list', ['object', {'authentication_type': 'string', 'https_server_certificate_url': 'string'}]] (Computed)
  location = string (Computed)
  platform = ['list', ['object', {'arc_kubernetes_cluster_id': 'string', 'custom_location_id': 'string', 'edge_device_id': 'string', 'stack_hci_cluster_id': 'string', 'type': 'string'}]] (Computed)
  site_ids = ['list', 'string'] (Computed)
  sku = string (Computed)
  software_version = string (Computed)
  tags = ['map', 'string'] (Computed)
  user_equipment_mtu_in_bytes = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
