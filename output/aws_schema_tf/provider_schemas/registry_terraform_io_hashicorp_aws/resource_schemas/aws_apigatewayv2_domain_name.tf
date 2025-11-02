resource "aws_apigatewayv2_domain_name" "name" {
  domain_name = string (Required)
  api_mapping_selection_expression = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  domain_name_configuration block "list" (Required) {
    certificate_arn = string (Required)
    endpoint_type = string (Required)
    security_policy = string (Required)
    hosted_zone_id = string (Computed)
    ip_address_type = string (Optional, Computed)
    ownership_verification_certificate_arn = string (Optional, Computed)
    target_domain_name = string (Computed)
  }

  mutual_tls_authentication block "list" (Optional) {
    truststore_uri = string (Required)
    truststore_version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
