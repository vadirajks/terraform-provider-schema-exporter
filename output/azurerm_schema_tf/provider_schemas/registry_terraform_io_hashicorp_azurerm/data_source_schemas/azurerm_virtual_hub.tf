data "azurerm_virtual_hub" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  address_prefix = string (Computed)
  default_route_table_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  virtual_router_asn = number (Computed)
  virtual_router_ips = ['list', 'string'] (Computed)
  virtual_wan_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
