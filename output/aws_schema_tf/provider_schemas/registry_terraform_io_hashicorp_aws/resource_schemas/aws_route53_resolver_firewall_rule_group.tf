resource "aws_route53_resolver_firewall_rule_group" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  share_status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
