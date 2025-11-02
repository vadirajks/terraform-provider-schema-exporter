resource "azurerm_cosmosdb_mongo_role_definition" "name" {
  cosmos_mongo_database_id = string (Required)
  role_name = string (Required)
  id = string (Optional, Computed)
  inherited_role_names = ['list', 'string'] (Optional)

  privilege block "list" (Optional) {
    actions = ['list', 'string'] (Required)

    resource block "list" (Required) {
      collection_name = string (Optional)
      db_name = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
