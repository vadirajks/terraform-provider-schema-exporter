resource "azurerm_cosmosdb_mongo_user_definition" "name" {
  cosmos_mongo_database_id = string (Required)
  password = string (Required)
  username = string (Required)
  id = string (Optional, Computed)
  inherited_role_names = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
