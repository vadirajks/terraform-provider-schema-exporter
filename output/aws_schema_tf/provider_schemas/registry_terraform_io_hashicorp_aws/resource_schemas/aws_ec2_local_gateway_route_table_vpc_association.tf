resource "aws_ec2_local_gateway_route_table_vpc_association" "name" {
  local_gateway_route_table_id = string (Required)
  vpc_id = string (Required)
  id = string (Optional, Computed)
  local_gateway_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
