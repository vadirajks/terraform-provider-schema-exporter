resource "azurerm_lb_nat_rule" "name" {
  backend_port = number (Required)
  frontend_ip_configuration_name = string (Required)
  loadbalancer_id = string (Required)
  name = string (Required)
  protocol = string (Required)
  resource_group_name = string (Required)
  backend_address_pool_id = string (Optional)
  backend_ip_configuration_id = string (Computed)
  enable_floating_ip = bool (Optional, Computed)
  enable_tcp_reset = bool (Optional, Computed)
  floating_ip_enabled = bool (Optional, Computed)
  frontend_ip_configuration_id = string (Computed)
  frontend_port = number (Optional)
  frontend_port_end = number (Optional)
  frontend_port_start = number (Optional)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Optional)
  tcp_reset_enabled = bool (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
