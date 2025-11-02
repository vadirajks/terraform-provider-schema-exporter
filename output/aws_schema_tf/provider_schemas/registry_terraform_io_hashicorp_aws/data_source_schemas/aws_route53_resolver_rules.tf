data "aws_route53_resolver_rules" "name" {
  id = string (Optional, Computed)
  name_regex = string (Optional)
  owner_id = string (Optional)
  region = string (Optional, Computed)
  resolver_endpoint_id = string (Optional)
  resolver_rule_ids = ['set', 'string'] (Computed)
  rule_type = string (Optional)
  share_status = string (Optional)
}
