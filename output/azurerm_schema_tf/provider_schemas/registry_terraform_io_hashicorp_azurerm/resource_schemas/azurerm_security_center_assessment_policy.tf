resource "azurerm_security_center_assessment_policy" "name" {
  description = string (Required)
  display_name = string (Required)
  categories = ['set', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  implementation_effort = string (Optional)
  name = string (Computed)
  remediation_description = string (Optional)
  severity = string (Optional)
  threats = ['set', 'string'] (Optional)
  user_impact = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
