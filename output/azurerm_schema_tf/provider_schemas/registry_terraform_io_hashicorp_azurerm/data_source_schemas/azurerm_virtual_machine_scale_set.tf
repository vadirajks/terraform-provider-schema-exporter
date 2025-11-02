data "azurerm_virtual_machine_scale_set" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  instances = ['list', ['object', {'computer_name': 'string', 'instance_id': 'string', 'latest_model_applied': 'bool', 'name': 'string', 'power_state': 'string', 'private_ip_address': 'string', 'private_ip_addresses': ['list', 'string'], 'public_ip_address': 'string', 'public_ip_addresses': ['list', 'string'], 'virtual_machine_id': 'string', 'zone': 'string'}]] (Computed)
  location = string (Computed)
  network_interface = ['list', ['object', {'auxiliary_mode': 'string', 'auxiliary_sku': 'string', 'dns_servers': ['list', 'string'], 'enable_accelerated_networking': 'bool', 'enable_ip_forwarding': 'bool', 'ip_configuration': ['list', ['object', {'application_gateway_backend_address_pool_ids': ['list', 'string'], 'application_security_group_ids': ['list', 'string'], 'load_balancer_backend_address_pool_ids': ['list', 'string'], 'load_balancer_inbound_nat_rules_ids': ['list', 'string'], 'name': 'string', 'primary': 'bool', 'public_ip_address': ['list', ['object', {'domain_name_label': 'string', 'idle_timeout_in_minutes': 'number', 'ip_tag': ['list', ['object', {'tag': 'string', 'type': 'string'}]], 'name': 'string', 'public_ip_prefix_id': 'string', 'version': 'string'}]], 'subnet_id': 'string', 'version': 'string'}]], 'name': 'string', 'network_security_group_id': 'string', 'primary': 'bool'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
