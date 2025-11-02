resource "azurerm_workloads_sap_discovery_virtual_instance" "name" {
  central_server_virtual_machine_id = string (Required)
  environment = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sap_product = string (Required)
  id = string (Optional, Computed)
  managed_resource_group_name = string (Optional)
  managed_resources_network_access_type = string (Optional)
  managed_storage_account_name = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
