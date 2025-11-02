resource "azurerm_postgresql_flexible_server_active_directory_administrator" "name" {
  object_id = string (Required)
  principal_name = string (Required)
  principal_type = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  tenant_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
