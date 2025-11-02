resource "azurerm_mysql_flexible_server_active_directory_administrator" "name" {
  identity_id = string (Required)
  login = string (Required)
  object_id = string (Required)
  server_id = string (Required)
  tenant_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
