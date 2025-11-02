resource "aws_ec2_local_gateway_route" "name" {
  destination_cidr_block = string (Required)
  local_gateway_route_table_id = string (Required)
  local_gateway_virtual_interface_group_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
