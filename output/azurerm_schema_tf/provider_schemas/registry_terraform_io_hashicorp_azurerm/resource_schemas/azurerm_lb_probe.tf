resource "azurerm_lb_probe" "name" {
  loadbalancer_id = string (Required)
  name = string (Required)
  port = number (Required)
  id = string (Optional, Computed)
  interval_in_seconds = number (Optional)
  load_balancer_rules = ['set', 'string'] (Computed)
  number_of_probes = number (Optional)
  probe_threshold = number (Optional)
  protocol = string (Optional)
  request_path = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
