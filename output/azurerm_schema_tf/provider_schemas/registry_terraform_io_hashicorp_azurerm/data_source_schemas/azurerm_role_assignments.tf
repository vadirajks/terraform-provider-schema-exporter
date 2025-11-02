data "azurerm_role_assignments" "name" {
  scope = string (Required)
  id = string (Optional, Computed)
  limit_at_scope = bool (Optional)
  principal_id = string (Optional)
  role_assignments = ['list', ['object', {'condition': 'string', 'condition_version': 'string', 'delegated_managed_identity_resource_id': 'string', 'description': 'string', 'principal_id': 'string', 'principal_type': 'string', 'role_assignment_id': 'string', 'role_assignment_name': 'string', 'role_assignment_scope': 'string', 'role_definition_id': 'string'}]] (Computed)
  tenant_id = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
