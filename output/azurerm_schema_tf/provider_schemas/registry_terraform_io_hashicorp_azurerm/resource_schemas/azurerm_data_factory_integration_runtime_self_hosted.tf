resource "azurerm_data_factory_integration_runtime_self_hosted" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  primary_authorization_key = string (Computed)
  secondary_authorization_key = string (Computed)
  self_contained_interactive_authoring_enabled = bool (Optional)

  rbac_authorization block "set" (Optional) {
    resource_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
