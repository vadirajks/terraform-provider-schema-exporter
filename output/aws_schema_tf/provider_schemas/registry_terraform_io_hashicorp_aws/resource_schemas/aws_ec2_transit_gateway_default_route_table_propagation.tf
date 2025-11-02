resource "aws_ec2_transit_gateway_default_route_table_propagation" "name" {
  transit_gateway_id = string (Required)
  transit_gateway_route_table_id = string (Required)
  id = string (Computed)
  original_default_route_table_id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
