resource "azurerm_virtual_hub_routing_intent" "name" {
  name = string (Required)
  virtual_hub_id = string (Required)
  id = string (Optional, Computed)

  routing_policy block "list" (Required) {
    destinations = ['list', 'string'] (Required)
    name = string (Required)
    next_hop = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
