resource "azurerm_databricks_virtual_network_peering" "name" {
  name = string (Required)
  remote_address_space_prefixes = ['list', 'string'] (Required)
  remote_virtual_network_id = string (Required)
  resource_group_name = string (Required)
  workspace_id = string (Required)
  address_space_prefixes = ['list', 'string'] (Computed)
  allow_forwarded_traffic = bool (Optional)
  allow_gateway_transit = bool (Optional)
  allow_virtual_network_access = bool (Optional)
  id = string (Optional, Computed)
  use_remote_gateways = bool (Optional)
  virtual_network_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
