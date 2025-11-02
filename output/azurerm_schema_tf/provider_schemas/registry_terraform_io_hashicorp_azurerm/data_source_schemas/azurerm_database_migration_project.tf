data "azurerm_database_migration_project" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  service_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  source_platform = string (Computed)
  tags = ['map', 'string'] (Computed)
  target_platform = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
