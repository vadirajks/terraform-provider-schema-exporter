resource "azurerm_postgresql_active_directory_administrator" "name" {
  login = string (Required)
  object_id = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  tenant_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
