data "azurerm_disk_access" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
