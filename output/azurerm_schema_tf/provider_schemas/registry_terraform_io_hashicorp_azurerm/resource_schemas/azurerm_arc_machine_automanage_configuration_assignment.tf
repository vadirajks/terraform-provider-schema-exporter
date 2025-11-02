resource "azurerm_arc_machine_automanage_configuration_assignment" "name" {
  arc_machine_id = string (Required)
  configuration_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
