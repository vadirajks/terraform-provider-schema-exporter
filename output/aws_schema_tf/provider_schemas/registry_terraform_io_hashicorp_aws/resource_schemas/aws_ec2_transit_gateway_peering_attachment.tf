resource "aws_ec2_transit_gateway_peering_attachment" "name" {
  peer_region = string (Required)
  peer_transit_gateway_id = string (Required)
  transit_gateway_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  peer_account_id = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  options block "list" (Optional) {
    dynamic_routing = string (Optional)
  }
}
