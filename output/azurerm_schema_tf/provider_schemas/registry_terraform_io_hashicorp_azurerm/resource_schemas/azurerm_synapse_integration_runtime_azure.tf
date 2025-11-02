resource "azurerm_synapse_integration_runtime_azure" "name" {
  location = string (Required)
  name = string (Required)
  synapse_workspace_id = string (Required)
  compute_type = string (Optional)
  core_count = number (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  time_to_live_min = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
