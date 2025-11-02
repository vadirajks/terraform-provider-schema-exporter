data "azurerm_network_manager_connectivity_configuration" "name" {
  name = string (Required)
  network_manager_id = string (Required)
  applies_to_group = ['list', ['object', {'global_mesh_enabled': 'bool', 'group_connectivity': 'string', 'network_group_id': 'string', 'use_hub_gateway': 'bool'}]] (Computed)
  connectivity_topology = string (Computed)
  delete_existing_peering_enabled = bool (Computed)
  description = string (Computed)
  global_mesh_enabled = bool (Computed)
  hub = ['list', ['object', {'resource_id': 'string', 'resource_type': 'string'}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
