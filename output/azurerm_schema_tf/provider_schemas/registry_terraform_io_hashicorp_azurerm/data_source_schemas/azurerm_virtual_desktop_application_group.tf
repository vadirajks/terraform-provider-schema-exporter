data "azurerm_virtual_desktop_application_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Computed)
  friendly_name = string (Computed)
  host_pool_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  type = string (Computed)
  workspace_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
