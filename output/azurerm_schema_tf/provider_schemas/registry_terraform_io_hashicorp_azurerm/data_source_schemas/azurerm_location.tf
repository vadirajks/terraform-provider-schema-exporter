data "azurerm_location" "name" {
  location = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  zone_mappings = ['list', ['object', {'logical_zone': 'string', 'physical_zone': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
