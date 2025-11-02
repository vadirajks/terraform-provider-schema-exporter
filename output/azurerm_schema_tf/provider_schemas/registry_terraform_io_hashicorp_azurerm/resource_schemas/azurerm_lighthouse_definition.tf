resource "azurerm_lighthouse_definition" "name" {
  managing_tenant_id = string (Required)
  name = string (Required)
  scope = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  lighthouse_definition_id = string (Optional, Computed)

  authorization block "set" (Required) {
    principal_id = string (Required)
    role_definition_id = string (Required)
    delegated_role_definition_ids = ['set', 'string'] (Optional)
    principal_display_name = string (Optional)
  }

  eligible_authorization block "set" (Optional) {
    principal_id = string (Required)
    role_definition_id = string (Required)
    principal_display_name = string (Optional)

    just_in_time_access_policy block "list" (Optional) {
      maximum_activation_duration = string (Optional)
      multi_factor_auth_provider = string (Optional)

      approver block "set" (Optional) {
        principal_id = string (Required)
        principal_display_name = string (Optional)
      }
    }
  }

  plan block "list" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
    version = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
