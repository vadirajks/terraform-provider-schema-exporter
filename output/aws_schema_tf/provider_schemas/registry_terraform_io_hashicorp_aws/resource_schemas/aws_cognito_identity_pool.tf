resource "aws_cognito_identity_pool" "name" {
  identity_pool_name = string (Required)
  allow_classic_flow = bool (Optional)
  allow_unauthenticated_identities = bool (Optional)
  arn = string (Computed)
  developer_provider_name = string (Optional)
  id = string (Optional, Computed)
  openid_connect_provider_arns = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  saml_provider_arns = ['list', 'string'] (Optional)
  supported_login_providers = ['map', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  cognito_identity_providers block "set" (Optional) {
    client_id = string (Optional)
    provider_name = string (Optional)
    server_side_token_check = bool (Optional)
  }
}
