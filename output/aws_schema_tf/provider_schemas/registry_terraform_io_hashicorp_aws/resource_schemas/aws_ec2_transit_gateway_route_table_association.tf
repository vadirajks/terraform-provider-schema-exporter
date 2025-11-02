resource "aws_ec2_transit_gateway_route_table_association" "name" {
  transit_gateway_attachment_id = string (Required)
  transit_gateway_route_table_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  replace_existing_association = bool (Optional)
  resource_id = string (Computed)
  resource_type = string (Computed)
}
