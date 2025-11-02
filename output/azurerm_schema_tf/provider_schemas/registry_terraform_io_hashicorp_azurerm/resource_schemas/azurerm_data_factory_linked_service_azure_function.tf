resource "azurerm_data_factory_linked_service_azure_function" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  url = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  key = string (Optional)
  parameters = ['map', 'string'] (Optional)

  key_vault_key block "list" (Optional) {
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
