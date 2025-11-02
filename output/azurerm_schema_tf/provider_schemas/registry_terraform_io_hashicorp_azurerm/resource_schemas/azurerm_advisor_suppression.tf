resource "azurerm_advisor_suppression" "name" {
  name = string (Required)
  recommendation_id = string (Required)
  resource_id = string (Required)
  id = string (Optional, Computed)
  suppression_id = string (Computed)
  ttl = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
