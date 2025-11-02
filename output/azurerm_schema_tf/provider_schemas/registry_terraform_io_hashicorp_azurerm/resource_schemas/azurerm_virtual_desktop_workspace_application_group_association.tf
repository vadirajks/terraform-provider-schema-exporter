resource "azurerm_virtual_desktop_workspace_application_group_association" "name" {
  application_group_id = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
