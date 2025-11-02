data "aws_ec2_transit_gateway_peering_attachment" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  peer_account_id = string (Computed)
  peer_region = string (Computed)
  peer_transit_gateway_id = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
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
