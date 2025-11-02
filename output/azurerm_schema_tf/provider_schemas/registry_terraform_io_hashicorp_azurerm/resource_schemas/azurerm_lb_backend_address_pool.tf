resource "azurerm_lb_backend_address_pool" "name" {
  loadbalancer_id = string (Required)
  name = string (Required)
  backend_ip_configurations = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  inbound_nat_rules = ['list', 'string'] (Computed)
  load_balancing_rules = ['list', 'string'] (Computed)
  outbound_rules = ['list', 'string'] (Computed)
  synchronous_mode = string (Optional)
  virtual_network_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  tunnel_interface block "list" (Optional) {
    identifier = number (Required)
    port = number (Required)
    protocol = string (Required)
    type = string (Required)
  }
}
