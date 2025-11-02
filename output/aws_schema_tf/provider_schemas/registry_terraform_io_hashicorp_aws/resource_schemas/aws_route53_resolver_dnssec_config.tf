resource "aws_route53_resolver_dnssec_config" "name" {
  resource_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  validation_status = string (Computed)
}
