resource "azurerm_data_protection_backup_instance_blob_storage" "name" {
  backup_policy_id = string (Required)
  location = string (Required)
  name = string (Required)
  storage_account_id = string (Required)
  vault_id = string (Required)
  id = string (Optional, Computed)
  storage_account_container_names = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
