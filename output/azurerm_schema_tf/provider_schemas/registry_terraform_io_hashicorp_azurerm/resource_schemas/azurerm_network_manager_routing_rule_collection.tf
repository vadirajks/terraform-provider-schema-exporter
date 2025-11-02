resource "azurerm_network_manager_routing_rule_collection" "name" {
  name = string (Required)
  network_group_ids = ['list', 'string'] (Required)
  routing_configuration_id = string (Required)
  bgp_route_propagation_enabled = bool (Optional)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
