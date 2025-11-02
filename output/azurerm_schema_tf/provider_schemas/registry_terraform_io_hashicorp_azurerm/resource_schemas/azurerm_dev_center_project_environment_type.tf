resource "azurerm_dev_center_project_environment_type" "name" {
  deployment_target_id = string (Required)
  dev_center_project_id = string (Required)
  location = string (Required)
  name = string (Required)
  creator_role_assignment_roles = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Required) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user_role_assignment block "set" (Optional) {
    roles = ['set', 'string'] (Required)
    user_id = string (Required)
  }
}
