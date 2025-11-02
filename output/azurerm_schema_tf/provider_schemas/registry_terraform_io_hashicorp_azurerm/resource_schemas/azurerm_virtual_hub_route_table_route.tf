resource "azurerm_virtual_hub_route_table_route" "name" {
  destinations = ['set', 'string'] (Required)
  destinations_type = string (Required)
  name = string (Required)
  next_hop = string (Required)
  route_table_id = string (Required)
  id = string (Optional, Computed)
  next_hop_type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
