resource "azurerm_postgresql_flexible_server_backup" "name" {
  name = string (Required)
  server_id = string (Required)
  completed_time = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
