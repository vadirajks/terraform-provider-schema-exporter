resource "aws_cognito_identity_pool_roles_attachment" "name" {
  identity_pool_id = string (Required)
  roles = ['map', 'string'] (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  role_mapping block "set" (Optional) {
    identity_provider = string (Required)
    type = string (Required)
    ambiguous_role_resolution = string (Optional)

    mapping_rule block "list" (Optional) {
      claim = string (Required)
      match_type = string (Required)
      role_arn = string (Required)
      value = string (Required)
    }
  }
}
