resource "azurerm_virtual_machine_scale_set_extension" "name" {
  name = string (Required)
  publisher = string (Required)
  type = string (Required)
  type_handler_version = string (Required)
  virtual_machine_scale_set_id = string (Required)
  auto_upgrade_minor_version = bool (Optional)
  automatic_upgrade_enabled = bool (Optional)
  failure_suppression_enabled = bool (Optional)
  force_update_tag = string (Optional)
  id = string (Optional, Computed)
  protected_settings = string (Optional)
  provision_after_extensions = ['list', 'string'] (Optional)
  settings = string (Optional)

  protected_settings_from_key_vault block "list" (Optional) {
    secret_url = string (Required)
    source_vault_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
