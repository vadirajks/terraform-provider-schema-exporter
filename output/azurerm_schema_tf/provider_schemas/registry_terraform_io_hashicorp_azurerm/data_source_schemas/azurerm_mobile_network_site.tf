data "azurerm_mobile_network_site" "name" {
  mobile_network_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  network_function_ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
