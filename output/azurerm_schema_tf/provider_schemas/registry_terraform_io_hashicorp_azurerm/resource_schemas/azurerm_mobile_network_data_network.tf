resource "azurerm_mobile_network_data_network" "name" {
  location = string (Required)
  mobile_network_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
