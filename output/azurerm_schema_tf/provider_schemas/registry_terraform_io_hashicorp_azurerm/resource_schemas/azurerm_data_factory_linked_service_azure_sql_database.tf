resource "azurerm_data_factory_linked_service_azure_sql_database" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  connection_string = string (Optional)
  credential_name = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  parameters = ['map', 'string'] (Optional)
  service_principal_id = string (Optional)
  service_principal_key = string (Optional)
  tenant_id = string (Optional)
  use_managed_identity = bool (Optional)

  key_vault_connection_string block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
  }

  key_vault_password block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
