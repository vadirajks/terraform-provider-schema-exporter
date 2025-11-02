data "azurerm_virtual_network" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  address_space = ['list', 'string'] (Computed)
  dns_servers = ['list', 'string'] (Computed)
  guid = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  subnets = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)
  vnet_peerings = ['map', 'string'] (Computed)
  vnet_peerings_addresses = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
