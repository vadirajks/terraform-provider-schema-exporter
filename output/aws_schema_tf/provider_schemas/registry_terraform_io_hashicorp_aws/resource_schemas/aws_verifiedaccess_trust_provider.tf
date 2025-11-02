resource "aws_verifiedaccess_trust_provider" "name" {
  policy_reference_name = string (Required)
  trust_provider_type = string (Required)
  description = string (Optional)
  device_trust_provider_type = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_trust_provider_type = string (Optional)

  device_options block "list" (Optional) {
    tenant_id = string (Optional)
  }

  native_application_oidc_options block "list" (Optional) {
    client_secret = string (Required)
    authorization_endpoint = string (Optional)
    client_id = string (Optional)
    issuer = string (Optional)
    public_signing_key_endpoint = string (Optional)
    scope = string (Optional)
    token_endpoint = string (Optional)
    user_info_endpoint = string (Optional)
  }

  oidc_options block "list" (Optional) {
    client_secret = string (Required)
    authorization_endpoint = string (Optional)
    client_id = string (Optional)
    issuer = string (Optional)
    scope = string (Optional)
    token_endpoint = string (Optional)
    user_info_endpoint = string (Optional)
  }

  sse_specification block "list" (Optional) {
    customer_managed_key_enabled = bool (Optional)
    kms_key_arn = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
