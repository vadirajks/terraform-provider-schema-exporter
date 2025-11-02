resource "azurerm_postgresql_flexible_server_configuration" "name" {
  name = string (Required)
  server_id = string (Required)
  value = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
