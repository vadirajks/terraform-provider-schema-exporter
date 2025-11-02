resource "azurerm_data_factory_linked_service_azure_blob_storage" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  connection_string = string (Optional)
  connection_string_insecure = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  parameters = ['map', 'string'] (Optional)
  sas_uri = string (Optional)
  service_endpoint = string (Optional)
  service_principal_id = string (Optional)
  service_principal_key = string (Optional)
  storage_kind = string (Optional)
  tenant_id = string (Optional)
  use_managed_identity = bool (Optional)

  key_vault_sas_token block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
  }

  service_principal_linked_key_vault_key block "list" (Optional) {
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
