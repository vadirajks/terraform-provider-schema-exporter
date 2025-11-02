resource "aws_cognito_managed_login_branding" "name" {
  client_id = string (Required)
  user_pool_id = string (Required)
  managed_login_branding_id = string (Computed)
  region = string (Optional, Computed)
  settings = string (Optional)
  settings_all = string (Computed)
  use_cognito_provided_values = bool (Optional, Computed)

  asset block "set" (Optional) {
    category = string (Required)
    color_mode = string (Required)
    extension = string (Required)
    bytes = string (Optional)
    resource_id = string (Optional)
  }
}
