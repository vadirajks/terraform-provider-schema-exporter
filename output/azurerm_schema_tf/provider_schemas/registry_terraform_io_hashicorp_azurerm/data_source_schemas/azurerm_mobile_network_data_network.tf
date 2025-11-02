data "azurerm_mobile_network_data_network" "name" {
  mobile_network_id = string (Required)
  name = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
