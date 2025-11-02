resource "aws_security_group_rule" "name" {
  from_port = number (Required)
  protocol = string (Required)
  security_group_id = string (Required)
  to_port = number (Required)
  type = string (Required)
  cidr_blocks = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  ipv6_cidr_blocks = ['list', 'string'] (Optional)
  prefix_list_ids = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  security_group_rule_id = string (Computed)
  self = bool (Optional)
  source_security_group_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
