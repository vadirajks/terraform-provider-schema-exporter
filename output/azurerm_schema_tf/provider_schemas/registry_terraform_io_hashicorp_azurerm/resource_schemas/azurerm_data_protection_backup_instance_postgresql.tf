resource "azurerm_data_protection_backup_instance_postgresql" "name" {
  backup_policy_id = string (Required)
  database_id = string (Required)
  location = string (Required)
  name = string (Required)
  vault_id = string (Required)
  database_credential_key_vault_secret_id = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
