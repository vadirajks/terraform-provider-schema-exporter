resource "aws_api_gateway_domain_name" "name" {
  domain_name = string (Required)
  arn = string (Computed)
  certificate_arn = string (Optional)
  certificate_body = string (Optional)
  certificate_chain = string (Optional)
  certificate_name = string (Optional)
  certificate_private_key = string (Optional)
  certificate_upload_date = string (Computed)
  cloudfront_domain_name = string (Computed)
  cloudfront_zone_id = string (Computed)
  domain_name_id = string (Computed)
  id = string (Optional, Computed)
  ownership_verification_certificate_arn = string (Optional, Computed)
  policy = string (Optional)
  region = string (Optional, Computed)
  regional_certificate_arn = string (Optional)
  regional_certificate_name = string (Optional)
  regional_domain_name = string (Computed)
  regional_zone_id = string (Computed)
  security_policy = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  endpoint_configuration block "list" (Optional) {
    types = ['list', 'string'] (Required)
    ip_address_type = string (Optional, Computed)
  }

  mutual_tls_authentication block "list" (Optional) {
    truststore_uri = string (Required)
    truststore_version = string (Optional)
  }
}
