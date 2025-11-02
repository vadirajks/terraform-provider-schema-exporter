data "azurerm_role_definition" "name" {
  assignable_scopes = ['list', 'string'] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  permissions = ['list', ['object', {'actions': ['list', 'string'], 'condition': 'string', 'condition_version': 'string', 'data_actions': ['set', 'string'], 'not_actions': ['list', 'string'], 'not_data_actions': ['set', 'string']}]] (Computed)
  role_definition_id = string (Optional, Computed)
  scope = string (Optional)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
