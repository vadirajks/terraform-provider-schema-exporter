resource "azurerm_api_management_workspace" "name" {
  api_management_id = string (Required)
  display_name = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
