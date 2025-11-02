data "aws_cognito_identity_pool" "name" {
  identity_pool_name = string (Required)
  allow_classic_flow = bool (Computed)
  allow_unauthenticated_identities = bool (Computed)
  arn = string (Computed)
  cognito_identity_providers = ['set', ['object', {'client_id': 'string', 'provider_name': 'string', 'server_side_token_check': 'bool'}]] (Computed)
  developer_provider_name = string (Computed)
  id = string (Optional, Computed)
  openid_connect_provider_arns = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
  saml_provider_arns = ['list', 'string'] (Computed)
  supported_login_providers = ['map', 'string'] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
