data "azurerm_key_vault_managed_hardware_security_module_role_definition" "name" {
  managed_hsm_id = string (Required)
  name = string (Required)
  assignable_scopes = ['list', 'string'] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  permission = ['list', ['object', {'actions': ['list', 'string'], 'data_actions': ['list', 'string'], 'not_actions': ['list', 'string'], 'not_data_actions': ['list', 'string']}]] (Computed)
  resource_manager_id = string (Computed)
  role_name = string (Computed)
  role_type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
