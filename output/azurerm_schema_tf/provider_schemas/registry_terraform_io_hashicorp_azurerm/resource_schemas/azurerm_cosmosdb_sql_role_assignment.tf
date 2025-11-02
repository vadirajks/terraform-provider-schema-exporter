resource "azurerm_cosmosdb_sql_role_assignment" "name" {
  account_name = string (Required)
  principal_id = string (Required)
  resource_group_name = string (Required)
  role_definition_id = string (Required)
  scope = string (Required)
  id = string (Optional, Computed)
  name = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
