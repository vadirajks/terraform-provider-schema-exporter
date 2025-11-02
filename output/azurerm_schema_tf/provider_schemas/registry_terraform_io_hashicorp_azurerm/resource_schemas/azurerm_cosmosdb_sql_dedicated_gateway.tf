resource "azurerm_cosmosdb_sql_dedicated_gateway" "name" {
  cosmosdb_account_id = string (Required)
  instance_count = number (Required)
  instance_size = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
