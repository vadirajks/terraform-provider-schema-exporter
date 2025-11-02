resource "aws_cognito_managed_user_pool_client" "name" {
  user_pool_id = string (Required)
  access_token_validity = number (Optional, Computed)
  allowed_oauth_flows = ['set', 'string'] (Optional, Computed)
  allowed_oauth_flows_user_pool_client = bool (Optional, Computed)
  allowed_oauth_scopes = ['set', 'string'] (Optional, Computed)
  auth_session_validity = number (Optional, Computed)
  callback_urls = ['set', 'string'] (Optional, Computed)
  client_secret = string (Computed)
  default_redirect_uri = string (Optional, Computed)
  enable_propagate_additional_user_context_data = bool (Optional, Computed)
  enable_token_revocation = bool (Optional, Computed)
  explicit_auth_flows = ['set', 'string'] (Optional, Computed)
  id = string (Computed)
  id_token_validity = number (Optional, Computed)
  logout_urls = ['set', 'string'] (Optional, Computed)
  name = string (Computed)
  name_pattern = string (Optional)
  name_prefix = string (Optional)
  prevent_user_existence_errors = string (Optional, Computed)
  read_attributes = ['set', 'string'] (Optional, Computed)
  refresh_token_validity = number (Optional, Computed)
  region = string (Optional, Computed)
  supported_identity_providers = ['set', 'string'] (Optional, Computed)
  write_attributes = ['set', 'string'] (Optional, Computed)

  analytics_configuration block "list" (Optional) {
    application_arn = string (Optional)
    application_id = string (Optional)
    external_id = string (Optional)
    role_arn = string (Optional, Computed)
    user_data_shared = bool (Optional, Computed)
  }

  refresh_token_rotation block "list" (Optional) {
    feature = string (Required)
    retry_grace_period_seconds = number (Optional)
  }

  token_validity_units block "list" (Optional) {
    access_token = string (Optional, Computed)
    id_token = string (Optional, Computed)
    refresh_token = string (Optional, Computed)
  }
}
