resource "azurerm_management_group_policy_remediation" "name" {
  management_group_id = string (Required)
  name = string (Required)
  policy_assignment_id = string (Required)
  failure_percentage = number (Optional)
  id = string (Optional, Computed)
  location_filters = ['list', 'string'] (Optional)
  parallel_deployments = number (Optional)
  policy_definition_reference_id = string (Optional)
  resource_count = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
