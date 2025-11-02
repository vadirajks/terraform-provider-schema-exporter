resource "aws_default_network_acl" "name" {
  default_network_acl_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  subnet_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)

  egress block "set" (Optional) {
    action = string (Required)
    from_port = number (Required)
    protocol = string (Required)
    rule_no = number (Required)
    to_port = number (Required)
    cidr_block = string (Optional)
    icmp_code = number (Optional)
    icmp_type = number (Optional)
    ipv6_cidr_block = string (Optional)
  }

  ingress block "set" (Optional) {
    action = string (Required)
    from_port = number (Required)
    protocol = string (Required)
    rule_no = number (Required)
    to_port = number (Required)
    cidr_block = string (Optional)
    icmp_code = number (Optional)
    icmp_type = number (Optional)
    ipv6_cidr_block = string (Optional)
  }
}
