resource "azurerm_marketplace_role_assignment" "name" {
  principal_id = string (Required)
  condition = string (Optional)
  condition_version = string (Optional)
  delegated_managed_identity_resource_id = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional)
  principal_type = string (Computed)
  role_definition_id = string (Optional)
  role_definition_name = string (Optional)
  skip_service_principal_aad_check = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
