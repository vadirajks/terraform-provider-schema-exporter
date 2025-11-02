resource "azurerm_policy_definition" "name" {
  display_name = string (Required)
  mode = string (Required)
  name = string (Required)
  policy_type = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  management_group_id = string (Optional)
  metadata = string (Optional, Computed)
  parameters = string (Optional)
  policy_rule = string (Optional)
  role_definition_ids = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
