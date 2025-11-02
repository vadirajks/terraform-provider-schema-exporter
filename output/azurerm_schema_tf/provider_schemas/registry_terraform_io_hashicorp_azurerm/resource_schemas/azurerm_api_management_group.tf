resource "azurerm_api_management_group" "name" {
  api_management_name = string (Required)
  display_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  external_id = string (Optional)
  id = string (Optional, Computed)
  type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
