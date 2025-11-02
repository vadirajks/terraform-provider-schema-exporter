resource "azurerm_mssql_server_transparent_data_encryption" "name" {
  server_id = string (Required)
  auto_rotation_enabled = bool (Optional)
  id = string (Optional, Computed)
  key_vault_key_id = string (Optional)
  managed_hsm_key_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
