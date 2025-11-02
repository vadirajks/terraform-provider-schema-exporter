resource "azurerm_app_service_environment_v3" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  subnet_id = string (Required)
  allow_new_private_endpoint_connections = bool (Optional)
  dedicated_host_count = number (Optional)
  dns_suffix = string (Computed)
  external_inbound_ip_addresses = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  inbound_network_dependencies = ['list', ['object', {'description': 'string', 'ip_addresses': ['list', 'string'], 'ports': ['list', 'string']}]] (Computed)
  internal_inbound_ip_addresses = ['list', 'string'] (Computed)
  internal_load_balancing_mode = string (Optional)
  ip_ssl_address_count = number (Computed)
  linux_outbound_ip_addresses = ['list', 'string'] (Computed)
  location = string (Computed)
  pricing_tier = string (Computed)
  remote_debugging_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)
  windows_outbound_ip_addresses = ['list', 'string'] (Computed)
  zone_redundant = bool (Optional)

  cluster_setting block "list" (Optional) {
    name = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
