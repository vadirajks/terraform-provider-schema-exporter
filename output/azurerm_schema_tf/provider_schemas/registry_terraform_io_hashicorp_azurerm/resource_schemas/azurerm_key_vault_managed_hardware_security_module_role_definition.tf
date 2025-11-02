resource "azurerm_key_vault_managed_hardware_security_module_role_definition" "name" {
  managed_hsm_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  resource_manager_id = string (Computed)
  role_name = string (Optional)
  role_type = string (Computed)

  permission block "list" (Optional) {
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
