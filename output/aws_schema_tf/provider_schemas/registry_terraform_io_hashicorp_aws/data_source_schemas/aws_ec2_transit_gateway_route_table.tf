data "aws_ec2_transit_gateway_route_table" "name" {
  arn = string (Computed)
  default_association_route_table = bool (Computed)
  default_propagation_route_table = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
