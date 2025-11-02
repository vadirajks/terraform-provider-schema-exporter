data "azurerm_cosmosdb_sql_role_definition" "name" {
  account_name = string (Required)
  resource_group_name = string (Required)
  role_definition_id = string (Required)
  assignable_scopes = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  permissions = ['set', ['object', {'data_actions': ['set', 'string']}]] (Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
