data "azurerm_network_ddos_protection_plan" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  virtual_network_ids = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
