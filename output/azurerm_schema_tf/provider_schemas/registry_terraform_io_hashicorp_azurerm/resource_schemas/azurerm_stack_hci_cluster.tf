resource "azurerm_stack_hci_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  automanage_configuration_id = string (Optional)
  client_id = string (Optional)
  cloud_id = string (Computed)
  id = string (Optional, Computed)
  resource_provider_object_id = string (Computed)
  service_endpoint = string (Computed)
  tags = ['map', 'string'] (Optional)
  tenant_id = string (Optional, Computed)

  identity block "list" (Optional) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
