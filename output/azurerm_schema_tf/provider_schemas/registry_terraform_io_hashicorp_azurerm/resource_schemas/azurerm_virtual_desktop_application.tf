resource "azurerm_virtual_desktop_application" "name" {
  application_group_id = string (Required)
  command_line_argument_policy = string (Required)
  name = string (Required)
  path = string (Required)
  command_line_arguments = string (Optional)
  description = string (Optional)
  friendly_name = string (Optional, Computed)
  icon_index = number (Optional)
  icon_path = string (Optional, Computed)
  id = string (Optional, Computed)
  show_in_portal = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
