resource "azurerm_resource_policy_remediation" "name" {
  name = string (Required)
  policy_assignment_id = string (Required)
  resource_id = string (Required)
  failure_percentage = number (Optional)
  id = string (Optional, Computed)
  location_filters = ['list', 'string'] (Optional)
  parallel_deployments = number (Optional)
  policy_definition_reference_id = string (Optional)
  resource_count = number (Optional)
  resource_discovery_mode = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
