data "azurerm_virtual_desktop_workspace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Computed)
  friendly_name = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  public_network_access_enabled = bool (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
