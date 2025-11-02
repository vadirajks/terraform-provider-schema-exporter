resource "azurerm_virtual_desktop_workspace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  friendly_name = string (Optional)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
