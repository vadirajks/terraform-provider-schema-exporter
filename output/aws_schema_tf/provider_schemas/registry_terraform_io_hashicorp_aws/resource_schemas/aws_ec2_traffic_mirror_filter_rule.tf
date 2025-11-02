resource "aws_ec2_traffic_mirror_filter_rule" "name" {
  destination_cidr_block = string (Required)
  rule_action = string (Required)
  rule_number = number (Required)
  source_cidr_block = string (Required)
  traffic_direction = string (Required)
  traffic_mirror_filter_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  protocol = number (Optional)
  region = string (Optional, Computed)

  destination_port_range block "list" (Optional) {
    from_port = number (Optional)
    to_port = number (Optional)
  }

  source_port_range block "list" (Optional) {
    from_port = number (Optional)
    to_port = number (Optional)
  }
}
