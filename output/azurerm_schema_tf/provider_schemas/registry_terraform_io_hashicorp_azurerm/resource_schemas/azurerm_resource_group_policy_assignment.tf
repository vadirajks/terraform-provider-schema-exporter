resource "azurerm_resource_group_policy_assignment" "name" {
  name = string (Required)
  policy_definition_id = string (Required)
  resource_group_id = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  enforce = bool (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  metadata = string (Optional, Computed)
  not_scopes = ['list', 'string'] (Optional)
  parameters = string (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  non_compliance_message block "list" (Optional) {
    content = string (Required)
    policy_definition_reference_id = string (Optional)
  }

  overrides block "list" (Optional) {
    value = string (Required)

    selectors block "list" (Optional) {
      in = ['list', 'string'] (Optional)
      kind = string (Optional)
      not_in = ['list', 'string'] (Optional)
    }
  }

  resource_selectors block "list" (Optional) {
    name = string (Optional)

    selectors block "list" (Required) {
      kind = string (Required)
      in = ['list', 'string'] (Optional)
      not_in = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
