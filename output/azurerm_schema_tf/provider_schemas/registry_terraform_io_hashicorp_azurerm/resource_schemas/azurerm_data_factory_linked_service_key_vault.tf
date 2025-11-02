resource "azurerm_data_factory_linked_service_key_vault" "name" {
  data_factory_id = string (Required)
  key_vault_id = string (Required)
  name = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  parameters = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
