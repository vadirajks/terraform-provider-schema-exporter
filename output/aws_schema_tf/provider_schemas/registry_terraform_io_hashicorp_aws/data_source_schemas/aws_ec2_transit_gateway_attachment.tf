data "aws_ec2_transit_gateway_attachment" "name" {
  arn = string (Computed)
  association_state = string (Computed)
  association_transit_gateway_route_table_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_id = string (Computed)
  resource_owner_id = string (Computed)
  resource_type = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_attachment_id = string (Optional, Computed)
  transit_gateway_id = string (Computed)
  transit_gateway_owner_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
