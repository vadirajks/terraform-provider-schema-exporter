resource "aws_ec2_transit_gateway_connect" "name" {
  transit_gateway_id = string (Required)
  transport_attachment_id = string (Required)
  id = string (Optional, Computed)
  protocol = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  transit_gateway_default_route_table_association = bool (Optional)
  transit_gateway_default_route_table_propagation = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
