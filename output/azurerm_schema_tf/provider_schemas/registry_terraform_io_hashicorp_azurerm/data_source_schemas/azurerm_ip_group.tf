data "azurerm_ip_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  cidrs = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
