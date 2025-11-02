resource "azurerm_key_vault_managed_hardware_security_module_role_assignment" "name" {
  managed_hsm_id = string (Required)
  name = string (Required)
  principal_id = string (Required)
  role_definition_id = string (Required)
  scope = string (Required)
  id = string (Optional, Computed)
  resource_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
