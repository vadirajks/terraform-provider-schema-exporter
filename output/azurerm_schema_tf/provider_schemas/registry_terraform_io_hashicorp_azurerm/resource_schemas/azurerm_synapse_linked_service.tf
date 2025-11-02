resource "azurerm_synapse_linked_service" "name" {
  name = string (Required)
  synapse_workspace_id = string (Required)
  type = string (Required)
  type_properties_json = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)

  integration_runtime block "list" (Optional) {
    name = string (Required)
    parameters = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
