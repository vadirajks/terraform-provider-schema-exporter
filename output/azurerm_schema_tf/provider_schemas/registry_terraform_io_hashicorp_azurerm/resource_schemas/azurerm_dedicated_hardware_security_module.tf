resource "azurerm_dedicated_hardware_security_module" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  id = string (Optional, Computed)
  stamp_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  zones = ['set', 'string'] (Optional)

  management_network_profile block "list" (Optional) {
    network_interface_private_ip_addresses = ['set', 'string'] (Required)
    subnet_id = string (Required)
  }

  network_profile block "list" (Required) {
    network_interface_private_ip_addresses = ['set', 'string'] (Required)
    subnet_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
