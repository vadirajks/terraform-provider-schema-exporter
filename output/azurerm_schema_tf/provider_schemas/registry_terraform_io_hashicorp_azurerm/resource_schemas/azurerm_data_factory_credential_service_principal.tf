resource "azurerm_data_factory_credential_service_principal" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  service_principal_id = string (Required)
  tenant_id = string (Required)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)

  service_principal_key block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
    secret_version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
