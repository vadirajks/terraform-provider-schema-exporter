resource "azurerm_network_manager_ipam_pool" "name" {
  address_prefixes = ['list', 'string'] (Required)
  location = string (Required)
  name = string (Required)
  network_manager_id = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  parent_pool_name = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
