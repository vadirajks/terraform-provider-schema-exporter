resource "azurerm_data_factory_credential_user_managed_identity" "name" {
  data_factory_id = string (Required)
  identity_id = string (Required)
  name = string (Required)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
