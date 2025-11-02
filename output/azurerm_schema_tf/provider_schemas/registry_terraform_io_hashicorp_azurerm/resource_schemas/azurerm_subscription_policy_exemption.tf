resource "azurerm_subscription_policy_exemption" "name" {
  exemption_category = string (Required)
  name = string (Required)
  policy_assignment_id = string (Required)
  subscription_id = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  expires_on = string (Optional)
  id = string (Optional, Computed)
  metadata = string (Optional, Computed)
  policy_definition_reference_ids = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
