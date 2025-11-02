resource "azurerm_policy_set_definition" "name" {
  display_name = string (Required)
  name = string (Required)
  policy_type = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  management_group_id = string (Optional)
  metadata = string (Optional, Computed)
  parameters = string (Optional)

  policy_definition_group block "set" (Optional) {
    name = string (Required)
    additional_metadata_resource_id = string (Optional)
    category = string (Optional)
    description = string (Optional)
    display_name = string (Optional)
  }

  policy_definition_reference block "list" (Required) {
    policy_definition_id = string (Required)
    parameter_values = string (Optional)
    policy_group_names = ['set', 'string'] (Optional)
    reference_id = string (Optional, Computed)
    version = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
