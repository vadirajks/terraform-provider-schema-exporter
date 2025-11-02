resource "azurerm_role_definition" "name" {
  name = string (Required)
  scope = string (Required)
  assignable_scopes = ['list', 'string'] (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  role_definition_id = string (Optional, Computed)
  role_definition_resource_id = string (Computed)

  permissions block "list" (Optional) {
    actions = ['list', 'string'] (Optional)
    data_actions = ['set', 'string'] (Optional)
    not_actions = ['list', 'string'] (Optional)
    not_data_actions = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
