resource "azurerm_lb_rule" "name" {
  backend_port = number (Required)
  frontend_ip_configuration_name = string (Required)
  frontend_port = number (Required)
  loadbalancer_id = string (Required)
  name = string (Required)
  protocol = string (Required)
  backend_address_pool_ids = ['list', 'string'] (Optional)
  disable_outbound_snat = bool (Optional)
  enable_floating_ip = bool (Optional, Computed)
  enable_tcp_reset = bool (Optional, Computed)
  floating_ip_enabled = bool (Optional, Computed)
  frontend_ip_configuration_id = string (Computed)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Optional)
  load_distribution = string (Optional)
  probe_id = string (Optional)
  tcp_reset_enabled = bool (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
