data "azurerm_lb_rule" "name" {
  loadbalancer_id = string (Required)
  name = string (Required)
  backend_address_pool_id = string (Computed)
  backend_port = number (Computed)
  disable_outbound_snat = bool (Computed)
  enable_floating_ip = bool (Computed)
  enable_tcp_reset = bool (Computed)
  floating_ip_enabled = bool (Computed)
  frontend_ip_configuration_name = string (Computed)
  frontend_port = number (Computed)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Computed)
  load_distribution = string (Computed)
  probe_id = string (Computed)
  protocol = string (Computed)
  tcp_reset_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
