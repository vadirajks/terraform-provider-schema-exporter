data "aws_route53_resolver_endpoint" "name" {
  arn = string (Computed)
  direction = string (Computed)
  id = string (Optional, Computed)
  ip_addresses = ['set', 'string'] (Computed)
  name = string (Computed)
  protocols = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
  resolver_endpoint_id = string (Optional)
  resolver_endpoint_type = string (Computed)
  status = string (Computed)
  vpc_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }
}
