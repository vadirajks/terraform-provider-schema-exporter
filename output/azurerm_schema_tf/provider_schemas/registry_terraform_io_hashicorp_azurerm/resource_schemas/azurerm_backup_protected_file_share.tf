resource "azurerm_backup_protected_file_share" "name" {
  backup_policy_id = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  source_file_share_name = string (Required)
  source_storage_account_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
