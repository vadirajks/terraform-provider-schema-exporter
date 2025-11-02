resource "azurerm_stack_hci_network_interface" "name" {
  custom_location_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  dns_servers = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  mac_address = string (Optional)
  tags = ['map', 'string'] (Optional)

  ip_configuration block "list" (Required) {
    subnet_id = string (Required)
    gateway = string (Computed)
    prefix_length = string (Computed)
    private_ip_address = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
