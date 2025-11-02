resource "azurerm_mobile_network" "name" {
  location = string (Required)
  mobile_country_code = string (Required)
  mobile_network_code = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  service_key = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
