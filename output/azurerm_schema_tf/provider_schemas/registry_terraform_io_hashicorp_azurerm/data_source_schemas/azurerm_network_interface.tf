data "azurerm_network_interface" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  accelerated_networking_enabled = bool (Computed)
  applied_dns_servers = ['set', 'string'] (Computed)
  dns_servers = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  internal_dns_name_label = string (Computed)
  ip_configuration = ['list', ['object', {'application_gateway_backend_address_pools_ids': ['set', 'string'], 'application_security_group_ids': ['set', 'string'], 'gateway_load_balancer_frontend_ip_configuration_id': 'string', 'load_balancer_backend_address_pools_ids': ['set', 'string'], 'load_balancer_inbound_nat_rules_ids': ['set', 'string'], 'name': 'string', 'primary': 'bool', 'private_ip_address': 'string', 'private_ip_address_allocation': 'string', 'private_ip_address_version': 'string', 'public_ip_address_id': 'string', 'subnet_id': 'string'}]] (Computed)
  ip_forwarding_enabled = bool (Computed)
  location = string (Computed)
  mac_address = string (Computed)
  network_security_group_id = string (Computed)
  private_ip_address = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)
  virtual_machine_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
