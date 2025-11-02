resource "azurerm_chaos_studio_experiment" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  selectors block "list" (Required) {
    chaos_studio_target_ids = ['list', 'string'] (Required)
    name = string (Required)
  }

  steps block "list" (Required) {
    name = string (Required)

    branch block "list" (Required) {
      name = string (Required)

      actions block "list" (Required) {
        action_type = string (Required)
        duration = string (Optional)
        parameters = ['map', 'string'] (Optional)
        selector_name = string (Optional)
        urn = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
