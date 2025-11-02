resource "azurerm_mobile_network_site" "name" {
  location = string (Required)
  mobile_network_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  network_function_ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
