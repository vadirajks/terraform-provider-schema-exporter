data "azurerm_network_manager_ipam_pool" "name" {
  name = string (Required)
  network_manager_id = string (Required)
  address_prefixes = ['list', 'string'] (Computed)
  description = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  parent_pool_name = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
