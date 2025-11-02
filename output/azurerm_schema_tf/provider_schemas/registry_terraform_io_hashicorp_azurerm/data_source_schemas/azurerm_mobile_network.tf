data "azurerm_mobile_network" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  mobile_country_code = string (Computed)
  mobile_network_code = string (Computed)
  service_key = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
