resource "azurerm_network_manager_routing_rule" "name" {
  name = string (Required)
  rule_collection_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  destination block "list" (Required) {
    address = string (Required)
    type = string (Required)
  }

  next_hop block "list" (Required) {
    type = string (Required)
    address = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
