resource "azurerm_api_management_user" "name" {
  api_management_name = string (Required)
  email = string (Required)
  first_name = string (Required)
  last_name = string (Required)
  resource_group_name = string (Required)
  user_id = string (Required)
  confirmation = string (Optional)
  id = string (Optional, Computed)
  note = string (Optional)
  password = string (Optional)
  state = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
