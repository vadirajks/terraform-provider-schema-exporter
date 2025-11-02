resource "azurerm_nat_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Optional)
  resource_guid = string (Computed)
  sku_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  zones = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
