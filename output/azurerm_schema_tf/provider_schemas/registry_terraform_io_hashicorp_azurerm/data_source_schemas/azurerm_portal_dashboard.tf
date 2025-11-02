data "azurerm_portal_dashboard" "name" {
  resource_group_name = string (Required)
  dashboard_properties = string (Optional, Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  location = string (Computed)
  name = string (Optional)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
