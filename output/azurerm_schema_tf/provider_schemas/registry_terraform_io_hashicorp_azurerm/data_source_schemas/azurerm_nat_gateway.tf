data "azurerm_nat_gateway" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Computed)
  location = string (Computed)
  public_ip_address_ids = ['list', 'string'] (Optional, Computed)
  public_ip_prefix_ids = ['list', 'string'] (Optional, Computed)
  resource_guid = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
