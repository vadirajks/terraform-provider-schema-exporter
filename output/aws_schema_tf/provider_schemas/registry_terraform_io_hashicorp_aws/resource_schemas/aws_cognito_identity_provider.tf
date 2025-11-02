resource "aws_cognito_identity_provider" "name" {
  provider_details = ['map', 'string'] (Required)
  provider_name = string (Required)
  provider_type = string (Required)
  user_pool_id = string (Required)
  attribute_mapping = ['map', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  idp_identifiers = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
}
