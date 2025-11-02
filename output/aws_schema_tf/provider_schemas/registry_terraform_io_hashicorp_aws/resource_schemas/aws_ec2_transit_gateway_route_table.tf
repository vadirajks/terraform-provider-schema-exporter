resource "aws_ec2_transit_gateway_route_table" "name" {
  transit_gateway_id = string (Required)
  arn = string (Computed)
  default_association_route_table = bool (Computed)
  default_propagation_route_table = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
