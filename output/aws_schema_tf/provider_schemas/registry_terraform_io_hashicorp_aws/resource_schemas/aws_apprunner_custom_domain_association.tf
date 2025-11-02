resource "aws_apprunner_custom_domain_association" "name" {
  domain_name = string (Required)
  service_arn = string (Required)
  certificate_validation_records = ['set', ['object', {'name': 'string', 'status': 'string', 'type': 'string', 'value': 'string'}]] (Computed)
  dns_target = string (Computed)
  enable_www_subdomain = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
