resource "azurerm_network_security_rule" "name" {
  access = string (Required)
  direction = string (Required)
  name = string (Required)
  network_security_group_name = string (Required)
  priority = number (Required)
  protocol = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  destination_address_prefix = string (Optional)
  destination_address_prefixes = ['set', 'string'] (Optional)
  destination_application_security_group_ids = ['set', 'string'] (Optional)
  destination_port_range = string (Optional)
  destination_port_ranges = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  source_address_prefix = string (Optional)
  source_address_prefixes = ['set', 'string'] (Optional)
  source_application_security_group_ids = ['set', 'string'] (Optional)
  source_port_range = string (Optional)
  source_port_ranges = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
