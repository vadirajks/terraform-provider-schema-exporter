resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  url = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  parameters = ['map', 'string'] (Optional)
  service_principal_id = string (Optional)
  service_principal_key = string (Optional)
  storage_account_key = string (Optional)
  tenant = string (Optional)
  use_managed_identity = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
