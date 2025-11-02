resource "azurerm_blueprint_assignment" "name" {
  location = string (Required)
  name = string (Required)
  target_subscription_id = string (Required)
  version_id = string (Required)
  blueprint_name = string (Computed)
  description = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  lock_exclude_actions = ['list', 'string'] (Optional)
  lock_exclude_principals = ['list', 'string'] (Optional)
  lock_mode = string (Optional)
  parameter_values = string (Optional)
  resource_groups = string (Optional)
  type = string (Computed)

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
}
