resource "azurerm_network_manager_connectivity_configuration" "name" {
  connectivity_topology = string (Required)
  name = string (Required)
  network_manager_id = string (Required)
  delete_existing_peering_enabled = bool (Optional)
  description = string (Optional)
  global_mesh_enabled = bool (Optional)
  id = string (Optional, Computed)

  applies_to_group block "list" (Required) {
    group_connectivity = string (Required)
    network_group_id = string (Required)
    global_mesh_enabled = bool (Optional)
    use_hub_gateway = bool (Optional)
  }

  hub block "list" (Optional) {
    resource_id = string (Required)
    resource_type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
