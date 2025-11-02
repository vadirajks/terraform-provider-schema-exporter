resource "azurerm_key_vault_managed_storage_account" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  storage_account_id = string (Required)
  storage_account_key = string (Required)
  id = string (Optional, Computed)
  regenerate_key_automatically = bool (Optional)
  regeneration_period = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
