resource "azurerm_security_center_subscription_pricing" "name" {
  tier = string (Required)
  id = string (Optional, Computed)
  resource_type = string (Optional)
  subplan = string (Optional)

  extension block "set" (Optional) {
    name = string (Required)
    additional_extension_properties = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
