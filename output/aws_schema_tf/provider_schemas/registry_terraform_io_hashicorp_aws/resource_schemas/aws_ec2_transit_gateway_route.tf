resource "aws_ec2_transit_gateway_route" "name" {
  destination_cidr_block = string (Required)
  transit_gateway_route_table_id = string (Required)
  blackhole = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  transit_gateway_attachment_id = string (Optional)
}
