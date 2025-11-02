data "azurerm_subnet" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  virtual_network_name = string (Required)
  address_prefix = string (Computed)
  address_prefixes = ['list', 'string'] (Computed)
  default_outbound_access_enabled = bool (Computed)
  id = string (Optional, Computed)
  network_security_group_id = string (Computed)
  private_endpoint_network_policies = string (Computed)
  private_link_service_network_policies_enabled = bool (Computed)
  route_table_id = string (Computed)
  service_endpoints = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
