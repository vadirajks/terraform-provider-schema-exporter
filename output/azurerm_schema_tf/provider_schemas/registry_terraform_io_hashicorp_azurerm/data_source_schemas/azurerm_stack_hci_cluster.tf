data "azurerm_stack_hci_cluster" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  automanage_configuration_id = string (Computed)
  client_id = string (Computed)
  cloud_id = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  resource_provider_object_id = string (Computed)
  service_endpoint = string (Computed)
  tags = ['map', 'string'] (Computed)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
