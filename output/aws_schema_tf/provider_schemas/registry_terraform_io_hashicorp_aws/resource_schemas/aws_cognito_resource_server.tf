resource "aws_cognito_resource_server" "name" {
  identifier = string (Required)
  name = string (Required)
  user_pool_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  scope_identifiers = ['list', 'string'] (Computed)

  scope block "set" (Optional) {
    scope_description = string (Required)
    scope_name = string (Required)
  }
}
