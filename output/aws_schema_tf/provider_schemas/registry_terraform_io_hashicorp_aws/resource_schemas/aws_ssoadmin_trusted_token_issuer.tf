resource "aws_ssoadmin_trusted_token_issuer" "name" {
  instance_arn = string (Required)
  name = string (Required)
  trusted_token_issuer_type = string (Required)
  arn = string (Computed)
  client_token = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  trusted_token_issuer_configuration block "list" (Optional) {

    oidc_jwt_configuration block "list" (Optional) {
      claim_attribute_path = string (Required)
      identity_store_attribute_path = string (Required)
      issuer_url = string (Required)
      jwks_retrieval_option = string (Required)
    }
  }
}
