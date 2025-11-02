resource "azurerm_subnet" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  virtual_network_name = string (Required)
  address_prefixes = ['list', 'string'] (Optional)
  default_outbound_access_enabled = bool (Optional)
  id = string (Optional, Computed)
  private_endpoint_network_policies = string (Optional)
  private_link_service_network_policies_enabled = bool (Optional)
  service_endpoint_policy_ids = ['set', 'string'] (Optional)
  service_endpoints = ['set', 'string'] (Optional)
  sharing_scope = string (Optional)

  delegation block "list" (Optional) {
    name = string (Required)

    service_delegation block "list" (Required) {
      name = string (Required)
      actions = ['set', 'string'] (Optional)
    }
  }

  ip_address_pool block "list" (Optional) {
    id = string (Required)
    number_of_ip_addresses = string (Required)
    allocated_ip_address_prefixes = ['list', 'string'] (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
