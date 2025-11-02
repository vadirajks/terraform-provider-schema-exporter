data "azurerm_api_management_user" "name" {
  api_management_name = string (Required)
  resource_group_name = string (Required)
  user_id = string (Required)
  email = string (Computed)
  first_name = string (Computed)
  id = string (Optional, Computed)
  last_name = string (Computed)
  note = string (Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
