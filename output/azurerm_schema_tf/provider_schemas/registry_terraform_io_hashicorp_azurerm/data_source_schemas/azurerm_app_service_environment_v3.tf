data "azurerm_app_service_environment_v3" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  allow_new_private_endpoint_connections = bool (Computed)
  cluster_setting = ['list', ['object', {'name': 'string', 'value': 'string'}]] (Computed)
  dedicated_host_count = number (Computed)
  dns_suffix = string (Computed)
  external_inbound_ip_addresses = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  inbound_network_dependencies = ['list', ['object', {'description': 'string', 'ip_addresses': ['list', 'string'], 'ports': ['list', 'string']}]] (Computed)
  internal_inbound_ip_addresses = ['list', 'string'] (Computed)
  internal_load_balancing_mode = string (Computed)
  ip_ssl_address_count = number (Computed)
  linux_outbound_ip_addresses = ['list', 'string'] (Computed)
  location = string (Computed)
  pricing_tier = string (Computed)
  remote_debugging_enabled = bool (Computed)
  subnet_id = string (Computed)
  tags = ['map', 'string'] (Computed)
  windows_outbound_ip_addresses = ['list', 'string'] (Computed)
  zone_redundant = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
