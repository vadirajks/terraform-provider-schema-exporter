resource "azurerm_availability_set" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  managed = bool (Optional)
  platform_fault_domain_count = number (Optional)
  platform_update_domain_count = number (Optional)
  proximity_placement_group_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
