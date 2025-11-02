resource "azurerm_mobile_network_packet_core_control_plane" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  site_ids = ['list', 'string'] (Required)
  sku = string (Required)
  control_plane_access_ipv4_address = string (Optional)
  control_plane_access_ipv4_gateway = string (Optional)
  control_plane_access_ipv4_subnet = string (Optional)
  control_plane_access_name = string (Optional)
  core_network_technology = string (Optional)
  id = string (Optional, Computed)
  interoperability_settings_json = string (Optional)
  software_version = string (Optional)
  tags = ['map', 'string'] (Optional)
  user_equipment_mtu_in_bytes = number (Optional)

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  local_diagnostics_access block "list" (Required) {
    authentication_type = string (Required)
    https_server_certificate_url = string (Optional)
  }

  platform block "list" (Optional) {
    type = string (Required)
    arc_kubernetes_cluster_id = string (Optional)
    custom_location_id = string (Optional)
    edge_device_id = string (Optional)
    stack_hci_cluster_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
