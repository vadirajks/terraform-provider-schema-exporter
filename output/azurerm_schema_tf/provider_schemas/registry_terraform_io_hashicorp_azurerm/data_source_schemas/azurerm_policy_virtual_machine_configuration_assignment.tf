data "azurerm_policy_virtual_machine_configuration_assignment" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  virtual_machine_name = string (Required)
  assignment_hash = string (Computed)
  compliance_status = string (Computed)
  content_hash = string (Computed)
  content_uri = string (Computed)
  id = string (Optional, Computed)
  last_compliance_status_checked = string (Computed)
  latest_report_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
