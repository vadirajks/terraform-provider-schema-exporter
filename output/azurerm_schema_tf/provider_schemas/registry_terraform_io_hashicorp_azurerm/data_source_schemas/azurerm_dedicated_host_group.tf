data "azurerm_dedicated_host_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  automatic_placement_enabled = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  platform_fault_domain_count = number (Computed)
  tags = ['map', 'string'] (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
