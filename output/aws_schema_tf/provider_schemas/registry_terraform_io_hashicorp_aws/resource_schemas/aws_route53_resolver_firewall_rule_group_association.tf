resource "aws_route53_resolver_firewall_rule_group_association" "name" {
  firewall_rule_group_id = string (Required)
  name = string (Required)
  priority = number (Required)
  vpc_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  mutation_protection = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
