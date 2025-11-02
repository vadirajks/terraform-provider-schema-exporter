resource "azurerm_data_factory_linked_service_azure_file_storage" "name" {
  connection_string = string (Required)
  data_factory_id = string (Required)
  name = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  file_share = string (Optional)
  host = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  parameters = ['map', 'string'] (Optional)
  password = string (Optional)
  user_id = string (Optional)

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
