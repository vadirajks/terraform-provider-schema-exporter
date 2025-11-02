resource "azurerm_security_center_assessment" "name" {
  assessment_policy_id = string (Required)
  target_resource_id = string (Required)
  additional_data = ['map', 'string'] (Optional)
  id = string (Optional, Computed)

  status block "list" (Required) {
    code = string (Required)
    cause = string (Optional)
    description = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
