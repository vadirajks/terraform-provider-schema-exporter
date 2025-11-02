resource "azurerm_key_vault_access_policy" "name" {
  key_vault_id = string (Required)
  object_id = string (Required)
  tenant_id = string (Required)
  application_id = string (Optional)
  certificate_permissions = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  key_permissions = ['list', 'string'] (Optional)
  secret_permissions = ['list', 'string'] (Optional)
  storage_permissions = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
