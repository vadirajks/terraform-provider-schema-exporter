resource "azurerm_arc_machine_extension" "name" {
  arc_machine_id = string (Required)
  location = string (Required)
  name = string (Required)
  publisher = string (Required)
  type = string (Required)
  automatic_upgrade_enabled = bool (Optional)
  force_update_tag = string (Optional)
  id = string (Optional, Computed)
  protected_settings = string (Optional)
  settings = string (Optional)
  tags = ['map', 'string'] (Optional)
  type_handler_version = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
