resource "azurerm_lb_backend_address_pool_address" "name" {
  backend_address_pool_id = string (Required)
  name = string (Required)
  backend_address_ip_configuration_id = string (Optional)
  id = string (Optional, Computed)
  inbound_nat_rule_port_mapping = ['list', ['object', {'backend_port': 'number', 'frontend_port': 'number', 'inbound_nat_rule_name': 'string'}]] (Computed)
  ip_address = string (Optional)
  virtual_network_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
