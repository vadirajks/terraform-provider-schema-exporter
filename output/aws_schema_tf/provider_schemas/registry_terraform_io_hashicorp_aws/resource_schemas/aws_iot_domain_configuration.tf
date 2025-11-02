resource "aws_iot_domain_configuration" "name" {
  name = string (Required)
  application_protocol = string (Optional, Computed)
  arn = string (Computed)
  authentication_type = string (Optional, Computed)
  domain_name = string (Optional, Computed)
  domain_type = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  server_certificate_arns = ['set', 'string'] (Optional)
  service_type = string (Optional)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  validation_certificate_arn = string (Optional)

  authorizer_config block "list" (Optional) {
    allow_authorizer_override = bool (Optional)
    default_authorizer_name = string (Optional)
  }

  tls_config block "list" (Optional) {
    security_policy = string (Optional, Computed)
  }
}
