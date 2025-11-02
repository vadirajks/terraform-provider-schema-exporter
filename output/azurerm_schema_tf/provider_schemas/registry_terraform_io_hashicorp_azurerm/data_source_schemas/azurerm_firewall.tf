data "azurerm_firewall" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  dns_proxy_enabled = bool (Optional, Computed)
  dns_servers = ['list', 'string'] (Computed)
  firewall_policy_id = string (Computed)
  id = string (Optional, Computed)
  ip_configuration = ['list', ['object', {'name': 'string', 'private_ip_address': 'string', 'public_ip_address_id': 'string', 'subnet_id': 'string'}]] (Computed)
  location = string (Computed)
  management_ip_configuration = ['list', ['object', {'name': 'string', 'private_ip_address': 'string', 'public_ip_address_id': 'string', 'subnet_id': 'string'}]] (Computed)
  sku_name = string (Computed)
  sku_tier = string (Computed)
  tags = ['map', 'string'] (Computed)
  threat_intel_mode = string (Computed)
  virtual_hub = ['list', ['object', {'private_ip_address': 'string', 'public_ip_addresses': ['list', 'string'], 'public_ip_count': 'number', 'virtual_hub_id': 'string'}]] (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
