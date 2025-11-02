resource "azurerm_synapse_workspace_key" "name" {
  active = bool (Required)
  customer_managed_key_name = string (Required)
  synapse_workspace_id = string (Required)
  customer_managed_key_versionless_id = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
