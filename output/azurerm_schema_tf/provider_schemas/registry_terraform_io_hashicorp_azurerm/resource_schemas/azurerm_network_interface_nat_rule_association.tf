resource "azurerm_network_interface_nat_rule_association" "name" {
  ip_configuration_name = string (Required)
  nat_rule_id = string (Required)
  network_interface_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
