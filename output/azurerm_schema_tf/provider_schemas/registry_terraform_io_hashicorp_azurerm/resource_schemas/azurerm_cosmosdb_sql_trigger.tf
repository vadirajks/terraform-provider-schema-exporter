resource "azurerm_cosmosdb_sql_trigger" "name" {
  body = string (Required)
  container_id = string (Required)
  name = string (Required)
  operation = string (Required)
  type = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
