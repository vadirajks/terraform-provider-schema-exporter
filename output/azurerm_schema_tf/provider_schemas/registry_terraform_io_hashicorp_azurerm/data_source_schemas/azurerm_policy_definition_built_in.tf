data "azurerm_policy_definition_built_in" "name" {
  description = string (Computed)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  management_group_name = string (Optional)
  metadata = string (Computed)
  mode = string (Computed)
  name = string (Optional, Computed)
  parameters = string (Computed)
  policy_rule = string (Computed)
  policy_type = string (Computed)
  role_definition_ids = ['list', 'string'] (Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
