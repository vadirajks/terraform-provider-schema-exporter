resource "azurerm_route" "name" {
  address_prefix = string (Required)
  name = string (Required)
  next_hop_type = string (Required)
  resource_group_name = string (Required)
  route_table_name = string (Required)
  id = string (Optional, Computed)
  next_hop_in_ip_address = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
