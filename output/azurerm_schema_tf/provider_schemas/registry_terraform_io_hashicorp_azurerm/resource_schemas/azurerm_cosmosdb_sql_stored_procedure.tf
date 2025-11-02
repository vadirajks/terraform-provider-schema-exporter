resource "azurerm_cosmosdb_sql_stored_procedure" "name" {
  account_name = string (Required)
  body = string (Required)
  container_name = string (Required)
  database_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
