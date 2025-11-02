resource "azurerm_virtual_machine_automanage_configuration_assignment" "name" {
  configuration_id = string (Required)
  virtual_machine_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
