resource "azurerm_postgresql_flexible_server_database" "name" {
  name = string (Required)
  server_id = string (Required)
  charset = string (Optional)
  collation = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
