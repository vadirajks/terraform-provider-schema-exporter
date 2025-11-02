resource "azurerm_dedicated_host_group" "name" {
  location = string (Required)
  name = string (Required)
  platform_fault_domain_count = number (Required)
  resource_group_name = string (Required)
  automatic_placement_enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  zone = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
