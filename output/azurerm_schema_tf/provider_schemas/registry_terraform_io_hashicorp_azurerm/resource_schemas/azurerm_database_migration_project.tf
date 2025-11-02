resource "azurerm_database_migration_project" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  service_name = string (Required)
  source_platform = string (Required)
  target_platform = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
