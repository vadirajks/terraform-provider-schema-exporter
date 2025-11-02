resource "azurerm_synapse_managed_private_endpoint" "name" {
  name = string (Required)
  subresource_name = string (Required)
  synapse_workspace_id = string (Required)
  target_resource_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
