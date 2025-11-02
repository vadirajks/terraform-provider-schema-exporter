data "azurerm_lb_backend_address_pool" "name" {
  loadbalancer_id = string (Required)
  name = string (Required)
  backend_address = ['list', ['object', {'inbound_nat_rule_port_mapping': ['list', ['object', {'backend_port': 'number', 'frontend_port': 'number', 'inbound_nat_rule_name': 'string'}]], 'ip_address': 'string', 'name': 'string', 'virtual_network_id': 'string'}]] (Computed)
  backend_ip_configurations = ['list', ['object', {'id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  inbound_nat_rules = ['list', 'string'] (Computed)
  load_balancing_rules = ['list', 'string'] (Computed)
  outbound_rules = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
