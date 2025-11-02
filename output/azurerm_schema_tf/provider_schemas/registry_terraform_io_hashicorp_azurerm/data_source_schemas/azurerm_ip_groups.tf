data "azurerm_ip_groups" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  location = string (Computed)
  names = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
