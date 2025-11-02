resource "aws_cognito_identity_pool_provider_principal_tag" "name" {
  identity_pool_id = string (Required)
  identity_provider_name = string (Required)
  id = string (Optional, Computed)
  principal_tags = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  use_defaults = bool (Optional)
}
