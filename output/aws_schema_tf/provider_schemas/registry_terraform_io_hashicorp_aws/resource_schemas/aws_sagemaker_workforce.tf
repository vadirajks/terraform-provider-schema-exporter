resource "aws_sagemaker_workforce" "name" {
  workforce_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subdomain = string (Computed)

  cognito_config block "list" (Optional) {
    client_id = string (Required)
    user_pool = string (Required)
  }

  oidc_config block "list" (Optional) {
    authorization_endpoint = string (Required)
    client_id = string (Required)
    client_secret = string (Required)
    issuer = string (Required)
    jwks_uri = string (Required)
    logout_endpoint = string (Required)
    token_endpoint = string (Required)
    user_info_endpoint = string (Required)
    authentication_request_extra_params = ['map', 'string'] (Optional)
    scope = string (Optional)
  }

  source_ip_config block "list" (Optional) {
    cidrs = ['set', 'string'] (Required)
  }

  workforce_vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Optional)
    subnets = ['set', 'string'] (Optional)
    vpc_endpoint_id = string (Computed)
    vpc_id = string (Optional)
  }
}
