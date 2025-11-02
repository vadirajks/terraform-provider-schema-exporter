data "azurerm_storage_encryption_scope" "name" {
  name = string (Required)
  storage_account_id = string (Required)
  id = string (Optional, Computed)
  key_vault_key_id = string (Computed)
  source = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
