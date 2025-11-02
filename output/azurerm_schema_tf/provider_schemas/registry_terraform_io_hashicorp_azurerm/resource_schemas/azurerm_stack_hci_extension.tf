resource "azurerm_stack_hci_extension" "name" {
  arc_setting_id = string (Required)
  name = string (Required)
  publisher = string (Required)
  type = string (Required)
  auto_upgrade_minor_version_enabled = bool (Optional)
  automatic_upgrade_enabled = bool (Optional)
  id = string (Optional, Computed)
  protected_settings = string (Optional)
  settings = string (Optional)
  type_handler_version = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
