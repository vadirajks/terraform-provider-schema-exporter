resource "azurerm_synapse_integration_runtime_self_hosted" "name" {
  name = string (Required)
  synapse_workspace_id = string (Required)
  authorization_key_primary = string (Computed)
  authorization_key_secondary = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
