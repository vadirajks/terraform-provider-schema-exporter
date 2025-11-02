resource "azurerm_container_app_environment_dapr_component" "name" {
  component_type = string (Required)
  container_app_environment_id = string (Required)
  name = string (Required)
  version = string (Required)
  id = string (Optional, Computed)
  ignore_errors = bool (Optional)
  init_timeout = string (Optional)
  scopes = ['list', 'string'] (Optional)

  metadata block "list" (Optional) {
    name = string (Required)
    secret_name = string (Optional)
    value = string (Optional)
  }

  secret block "set" (Optional) {
    name = string (Required)
    identity = string (Optional)
    key_vault_secret_id = string (Optional)
    value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
