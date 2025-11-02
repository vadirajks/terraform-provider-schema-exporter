resource "azurerm_network_manager_security_admin_configuration" "name" {
  name = string (Required)
  network_manager_id = string (Required)
  apply_on_network_intent_policy_based_services = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
