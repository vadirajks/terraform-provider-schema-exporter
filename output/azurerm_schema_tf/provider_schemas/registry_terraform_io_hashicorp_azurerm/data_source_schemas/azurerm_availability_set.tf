data "azurerm_availability_set" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  managed = bool (Computed)
  platform_fault_domain_count = number (Computed)
  platform_update_domain_count = number (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
