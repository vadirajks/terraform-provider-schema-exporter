resource "aws_route53_resolver_firewall_domain_list" "name" {
  name = string (Required)
  arn = string (Computed)
  domains = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
