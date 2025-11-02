resource "azurerm_express_route_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scale_units = number (Required)
  virtual_hub_id = string (Required)
  allow_non_virtual_wan_traffic = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
