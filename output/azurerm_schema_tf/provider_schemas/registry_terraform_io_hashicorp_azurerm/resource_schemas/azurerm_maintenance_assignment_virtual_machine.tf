resource "azurerm_maintenance_assignment_virtual_machine" "name" {
  location = string (Required)
  maintenance_configuration_id = string (Required)
  virtual_machine_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
