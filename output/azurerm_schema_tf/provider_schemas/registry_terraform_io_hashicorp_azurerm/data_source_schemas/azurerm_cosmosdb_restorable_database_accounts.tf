data "azurerm_cosmosdb_restorable_database_accounts" "name" {
  location = string (Required)
  name = string (Required)
  accounts = ['list', ['object', {'api_type': 'string', 'creation_time': 'string', 'deletion_time': 'string', 'id': 'string', 'restorable_locations': ['list', ['object', {'creation_time': 'string', 'deletion_time': 'string', 'location': 'string', 'regional_database_account_instance_id': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
