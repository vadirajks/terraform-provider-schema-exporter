resource "azurerm_network_manager_admin_rule" "name" {
  action = string (Required)
  admin_rule_collection_id = string (Required)
  direction = string (Required)
  name = string (Required)
  priority = number (Required)
  protocol = string (Required)
  description = string (Optional)
  destination_port_ranges = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  source_port_ranges = ['list', 'string'] (Optional)

  destination block "list" (Optional) {
    address_prefix = string (Required)
    address_prefix_type = string (Required)
  }

  source block "list" (Optional) {
    address_prefix = string (Required)
    address_prefix_type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
