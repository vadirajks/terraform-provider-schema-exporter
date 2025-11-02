data "azurerm_web_application_firewall_policy" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
