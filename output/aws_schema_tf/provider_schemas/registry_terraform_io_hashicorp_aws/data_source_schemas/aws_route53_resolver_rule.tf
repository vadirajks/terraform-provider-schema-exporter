data "aws_route53_resolver_rule" "name" {
  arn = string (Computed)
  domain_name = string (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  resolver_endpoint_id = string (Optional, Computed)
  resolver_rule_id = string (Optional, Computed)
  rule_type = string (Optional, Computed)
  share_status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
