data "azurerm_virtual_hub_route_table" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  virtual_hub_name = string (Required)
  id = string (Optional, Computed)
  labels = ['set', 'string'] (Computed)
  route = ['list', ['object', {'destinations': ['list', 'string'], 'destinations_type': 'string', 'name': 'string', 'next_hop': 'string', 'next_hop_type': 'string'}]] (Computed)
  virtual_hub_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
