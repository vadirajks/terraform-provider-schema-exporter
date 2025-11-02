resource "azurerm_stack_hci_logical_network" "name" {
  custom_location_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  virtual_switch_name = string (Required)
  dns_servers = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  subnet block "list" (Required) {
    ip_allocation_method = string (Required)
    address_prefix = string (Optional)
    vlan_id = number (Optional)

    ip_pool block "list" (Optional) {
      end = string (Required)
      start = string (Required)
    }

    route block "list" (Optional) {
      address_prefix = string (Required)
      next_hop_ip_address = string (Required)
      name = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
