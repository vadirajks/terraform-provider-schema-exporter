resource "azurerm_role_assignment" "name" {
  principal_id = string (Required)
  scope = string (Required)
  condition = string (Optional)
  condition_version = string (Optional, Computed)
  delegated_managed_identity_resource_id = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  principal_type = string (Optional, Computed)
  role_definition_id = string (Optional, Computed)
  role_definition_name = string (Optional, Computed)
  skip_service_principal_aad_check = bool (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
