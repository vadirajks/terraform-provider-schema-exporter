resource "azurerm_maps_creator" "name" {
  location = string (Required)
  maps_account_id = string (Required)
  name = string (Required)
  storage_units = number (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
