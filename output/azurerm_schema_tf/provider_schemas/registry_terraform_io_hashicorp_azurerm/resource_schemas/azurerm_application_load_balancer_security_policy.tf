resource "azurerm_application_load_balancer_security_policy" "name" {
  application_load_balancer_id = string (Required)
  location = string (Required)
  name = string (Required)
  web_application_firewall_policy_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
