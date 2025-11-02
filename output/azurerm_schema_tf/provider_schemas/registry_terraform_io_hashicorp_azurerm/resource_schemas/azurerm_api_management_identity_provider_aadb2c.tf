resource "azurerm_api_management_identity_provider_aadb2c" "name" {
  allowed_tenant = string (Required)
  api_management_name = string (Required)
  authority = string (Required)
  client_id = string (Required)
  client_secret = string (Required)
  resource_group_name = string (Required)
  signin_policy = string (Required)
  signin_tenant = string (Required)
  signup_policy = string (Required)
  client_library = string (Optional)
  id = string (Optional, Computed)
  password_reset_policy = string (Optional)
  profile_editing_policy = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
