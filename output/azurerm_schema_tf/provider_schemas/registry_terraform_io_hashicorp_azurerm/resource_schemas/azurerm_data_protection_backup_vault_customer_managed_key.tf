resource "azurerm_data_protection_backup_vault_customer_managed_key" "name" {
  data_protection_backup_vault_id = string (Required)
  key_vault_key_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
