data "azurerm_lb_outbound_rule" "name" {
  loadbalancer_id = string (Required)
  name = string (Required)
  allocated_outbound_ports = number (Computed)
  backend_address_pool_id = string (Computed)
  enable_tcp_reset = bool (Computed)
  frontend_ip_configuration = ['list', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Computed)
  protocol = string (Computed)
  tcp_reset_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
