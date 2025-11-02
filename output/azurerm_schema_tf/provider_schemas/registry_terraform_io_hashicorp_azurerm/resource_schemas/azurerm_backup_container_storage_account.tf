resource "azurerm_backup_container_storage_account" "name" {
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  storage_account_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
