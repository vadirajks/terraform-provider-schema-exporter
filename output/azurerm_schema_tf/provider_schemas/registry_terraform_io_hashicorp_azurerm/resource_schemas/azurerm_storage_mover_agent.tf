resource "azurerm_storage_mover_agent" "name" {
  arc_virtual_machine_id = string (Required)
  arc_virtual_machine_uuid = string (Required)
  name = string (Required)
  storage_mover_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
