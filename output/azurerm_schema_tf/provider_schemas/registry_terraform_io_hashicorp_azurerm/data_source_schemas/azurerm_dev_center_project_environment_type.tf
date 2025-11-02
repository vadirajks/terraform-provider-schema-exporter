data "azurerm_dev_center_project_environment_type" "name" {
  dev_center_project_id = string (Required)
  name = string (Required)
  creator_role_assignment_roles = ['set', 'string'] (Computed)
  deployment_target_id = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  user_role_assignment = ['set', ['object', {'roles': ['set', 'string'], 'user_id': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
