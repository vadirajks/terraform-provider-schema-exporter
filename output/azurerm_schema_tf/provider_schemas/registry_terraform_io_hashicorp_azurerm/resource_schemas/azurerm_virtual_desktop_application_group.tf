resource "azurerm_virtual_desktop_application_group" "name" {
  host_pool_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  type = string (Required)
  default_desktop_display_name = string (Optional)
  description = string (Optional)
  friendly_name = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
