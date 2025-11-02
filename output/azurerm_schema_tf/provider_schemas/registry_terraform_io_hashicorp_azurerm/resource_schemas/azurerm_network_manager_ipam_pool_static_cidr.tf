resource "azurerm_network_manager_ipam_pool_static_cidr" "name" {
  ipam_pool_id = string (Required)
  name = string (Required)
  address_prefixes = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  number_of_ip_addresses_to_allocate = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
