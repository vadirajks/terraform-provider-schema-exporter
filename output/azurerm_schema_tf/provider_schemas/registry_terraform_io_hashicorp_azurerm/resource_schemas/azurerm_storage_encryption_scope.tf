resource "azurerm_storage_encryption_scope" "name" {
  name = string (Required)
  source = string (Required)
  storage_account_id = string (Required)
  id = string (Optional, Computed)
  infrastructure_encryption_required = bool (Optional)
  key_vault_key_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
