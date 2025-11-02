data "azurerm_key_vault_access_policy" "name" {
  name = string (Required)
  certificate_permissions = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  key_permissions = ['list', 'string'] (Computed)
  secret_permissions = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
