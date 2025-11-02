data "azurerm_extended_locations" "name" {
  location = string (Required)
  extended_locations = ['list', 'string'] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
