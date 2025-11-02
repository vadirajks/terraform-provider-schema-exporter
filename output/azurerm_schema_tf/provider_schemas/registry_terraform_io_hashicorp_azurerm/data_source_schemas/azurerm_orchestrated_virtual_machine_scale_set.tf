data "azurerm_orchestrated_virtual_machine_scale_set" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  network_interface = ['list', ['object', {'accelerated_networking_enabled': 'bool', 'dns_servers': ['list', 'string'], 'ip_configuration': ['list', ['object', {'application_gateway_backend_address_pool_ids': ['list', 'string'], 'application_security_group_ids': ['list', 'string'], 'load_balancer_backend_address_pool_ids': ['list', 'string'], 'load_balancer_inbound_nat_rules_ids': ['list', 'string'], 'name': 'string', 'primary': 'bool', 'public_ip_address': ['list', ['object', {'domain_name_label': 'string', 'idle_timeout_in_minutes': 'number', 'ip_tag': ['list', ['object', {'tag': 'string', 'type': 'string'}]], 'name': 'string', 'public_ip_prefix_id': 'string', 'version': 'string'}]], 'subnet_id': 'string', 'version': 'string'}]], 'ip_forwarding_enabled': 'bool', 'name': 'string', 'network_security_group_id': 'string', 'primary': 'bool'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
