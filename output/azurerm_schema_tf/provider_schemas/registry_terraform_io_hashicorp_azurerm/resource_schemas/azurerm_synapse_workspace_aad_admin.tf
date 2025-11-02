resource "azurerm_synapse_workspace_aad_admin" "name" {
  login = string (Required)
  object_id = string (Required)
  synapse_workspace_id = string (Required)
  tenant_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
