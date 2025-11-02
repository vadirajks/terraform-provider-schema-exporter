resource "azurerm_iotcentral_application_network_rule_set" "name" {
  iotcentral_application_id = string (Required)
  apply_to_device = bool (Optional)
  default_action = string (Optional)
  id = string (Optional, Computed)

  ip_rule block "list" (Optional) {
    ip_mask = string (Required)
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
