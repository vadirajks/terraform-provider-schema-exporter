resource "azurerm_cosmosdb_sql_role_definition" "name" {
  account_name = string (Required)
  assignable_scopes = ['set', 'string'] (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  role_definition_id = string (Optional, Computed)
  type = string (Optional)

  permissions block "set" (Required) {
    data_actions = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
