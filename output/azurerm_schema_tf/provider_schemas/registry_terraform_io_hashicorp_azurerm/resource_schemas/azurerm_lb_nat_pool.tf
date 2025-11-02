resource "azurerm_lb_nat_pool" "name" {
  backend_port = number (Required)
  frontend_ip_configuration_name = string (Required)
  frontend_port_end = number (Required)
  frontend_port_start = number (Required)
  loadbalancer_id = string (Required)
  name = string (Required)
  protocol = string (Required)
  resource_group_name = string (Required)
  floating_ip_enabled = bool (Optional)
  frontend_ip_configuration_id = string (Computed)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Optional)
  tcp_reset_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
