resource "azurerm_data_protection_backup_instance_mysql_flexible_server" "name" {
  backup_policy_id = string (Required)
  location = string (Required)
  name = string (Required)
  server_id = string (Required)
  vault_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
