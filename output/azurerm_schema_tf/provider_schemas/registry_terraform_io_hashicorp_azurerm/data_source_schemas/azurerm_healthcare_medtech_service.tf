data "azurerm_healthcare_medtech_service" "name" {
  name = string (Required)
  workspace_id = string (Required)
  device_mapping_json = string (Computed)
  eventhub_consumer_group_name = string (Computed)
  eventhub_name = string (Computed)
  eventhub_namespace_name = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
