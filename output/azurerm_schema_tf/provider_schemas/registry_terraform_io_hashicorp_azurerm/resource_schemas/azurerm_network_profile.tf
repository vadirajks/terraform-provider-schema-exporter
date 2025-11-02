resource "azurerm_network_profile" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  container_network_interface_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  container_network_interface block "list" (Required) {
    name = string (Required)

    ip_configuration block "list" (Required) {
      name = string (Required)
      subnet_id = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
