resource "azurerm_api_management_group_user" "name" {
  api_management_name = string (Required)
  group_name = string (Required)
  resource_group_name = string (Required)
  user_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
