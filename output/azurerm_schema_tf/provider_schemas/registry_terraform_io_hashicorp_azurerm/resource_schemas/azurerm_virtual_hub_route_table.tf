resource "azurerm_virtual_hub_route_table" "name" {
  name = string (Required)
  virtual_hub_id = string (Required)
  id = string (Optional, Computed)
  labels = ['set', 'string'] (Optional)

  route block "set" (Optional) {
    destinations = ['set', 'string'] (Required)
    destinations_type = string (Required)
    name = string (Required)
    next_hop = string (Required)
    next_hop_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
