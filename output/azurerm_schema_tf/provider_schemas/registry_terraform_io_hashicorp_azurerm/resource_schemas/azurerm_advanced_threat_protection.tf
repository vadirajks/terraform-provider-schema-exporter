resource "azurerm_advanced_threat_protection" "name" {
  enabled = bool (Required)
  target_resource_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
