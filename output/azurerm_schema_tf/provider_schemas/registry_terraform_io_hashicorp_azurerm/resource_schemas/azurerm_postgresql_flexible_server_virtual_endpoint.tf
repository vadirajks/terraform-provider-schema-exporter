resource "azurerm_postgresql_flexible_server_virtual_endpoint" "name" {
  name = string (Required)
  replica_server_id = string (Required)
  source_server_id = string (Required)
  type = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
