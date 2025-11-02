resource "aws_network_acl" "name" {
  vpc_id = string (Required)
  arn = string (Computed)
  egress = ['set', ['object', {'action': 'string', 'cidr_block': 'string', 'from_port': 'number', 'icmp_code': 'number', 'icmp_type': 'number', 'ipv6_cidr_block': 'string', 'protocol': 'string', 'rule_no': 'number', 'to_port': 'number'}]] (Optional, Computed)
  id = string (Optional, Computed)
  ingress = ['set', ['object', {'action': 'string', 'cidr_block': 'string', 'from_port': 'number', 'icmp_code': 'number', 'icmp_type': 'number', 'ipv6_cidr_block': 'string', 'protocol': 'string', 'rule_no': 'number', 'to_port': 'number'}]] (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
