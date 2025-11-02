data "azurerm_policy_assignment" "name" {
  name = string (Required)
  scope_id = string (Required)
  description = string (Computed)
  display_name = string (Computed)
  enforce = bool (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  metadata = string (Computed)
  non_compliance_message = ['list', ['object', {'content': 'string', 'policy_definition_reference_id': 'string'}]] (Computed)
  not_scopes = ['list', 'string'] (Computed)
  parameters = string (Computed)
  policy_definition_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
