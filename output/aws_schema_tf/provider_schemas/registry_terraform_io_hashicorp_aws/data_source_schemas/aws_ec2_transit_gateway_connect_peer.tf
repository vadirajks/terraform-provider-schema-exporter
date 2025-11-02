data "aws_ec2_transit_gateway_connect_peer" "name" {
  arn = string (Computed)
  bgp_asn = string (Computed)
  bgp_peer_address = string (Computed)
  bgp_transit_gateway_addresses = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  inside_cidr_blocks = ['list', 'string'] (Computed)
  peer_address = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_address = string (Computed)
  transit_gateway_attachment_id = string (Computed)
  transit_gateway_connect_peer_id = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
