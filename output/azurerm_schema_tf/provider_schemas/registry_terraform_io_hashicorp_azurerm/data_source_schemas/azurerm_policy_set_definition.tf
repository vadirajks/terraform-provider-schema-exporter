data "azurerm_policy_set_definition" "name" {
  description = string (Computed)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  management_group_name = string (Optional)
  metadata = string (Computed)
  name = string (Optional, Computed)
  parameters = string (Computed)
  policy_definition_group = ['list', ['object', {'additional_metadata_resource_id': 'string', 'category': 'string', 'description': 'string', 'display_name': 'string', 'name': 'string'}]] (Computed)
  policy_definition_reference = ['list', ['object', {'parameter_values': 'string', 'parameters': ['map', 'string'], 'policy_definition_id': 'string', 'policy_group_names': ['list', 'string'], 'reference_id': 'string'}]] (Computed)
  policy_definitions = string (Computed)
  policy_type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
