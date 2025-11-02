resource "aws_cognito_identity_openid_token_for_developer_identity" "name" { // Ephemeral Resource
  identity_pool_id = string (Required)
  logins = ['map', 'string'] (Required)
  identity_id = string (Optional, Computed)
  principal_tags = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  token = string (Computed)
  token_duration = number (Optional)
}
