resource "azurerm_network_manager_admin_rule_collection" "name" {
  name = string (Required)
  network_group_ids = ['list', 'string'] (Required)
  security_admin_configuration_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
