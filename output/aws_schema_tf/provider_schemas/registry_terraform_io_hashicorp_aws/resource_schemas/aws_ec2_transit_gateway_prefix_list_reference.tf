resource "aws_ec2_transit_gateway_prefix_list_reference" "name" {
  prefix_list_id = string (Required)
  transit_gateway_route_table_id = string (Required)
  blackhole = bool (Optional)
  id = string (Optional, Computed)
  prefix_list_owner_id = string (Computed)
  region = string (Optional, Computed)
  transit_gateway_attachment_id = string (Optional)
}
