resource "azurerm_lb_outbound_rule" "name" {
  backend_address_pool_id = string (Required)
  loadbalancer_id = string (Required)
  name = string (Required)
  protocol = string (Required)
  allocated_outbound_ports = number (Optional)
  enable_tcp_reset = bool (Optional, Computed)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Optional)
  tcp_reset_enabled = bool (Optional, Computed)

  frontend_ip_configuration block "list" (Optional) {
    name = string (Required)
    id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
