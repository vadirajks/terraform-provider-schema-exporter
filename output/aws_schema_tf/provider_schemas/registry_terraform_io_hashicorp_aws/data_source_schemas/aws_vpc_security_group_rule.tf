data "aws_vpc_security_group_rule" "name" {
  arn = string (Computed)
  cidr_ipv4 = string (Computed)
  cidr_ipv6 = string (Computed)
  description = string (Computed)
  from_port = number (Computed)
  id = string (Computed)
  ip_protocol = string (Computed)
  is_egress = bool (Computed)
  prefix_list_id = string (Computed)
  referenced_security_group_id = string (Computed)
  region = string (Optional, Computed)
  security_group_id = string (Computed)
  security_group_rule_id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
  to_port = number (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
