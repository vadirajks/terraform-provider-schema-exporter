data "azurerm_dev_test_virtual_network" "name" {
  lab_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allowed_subnets = ['list', ['object', {'allow_public_ip': 'string', 'lab_subnet_name': 'string', 'resource_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  subnet_overrides = ['list', ['object', {'lab_subnet_name': 'string', 'resource_id': 'string', 'use_in_vm_creation_permission': 'string', 'use_public_ip_address_permission': 'string', 'virtual_network_pool_name': 'string'}]] (Computed)
  unique_identifier = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
