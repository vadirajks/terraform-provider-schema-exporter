resource "aws_ec2_transit_gateway_connect_peer" "name" {
  inside_cidr_blocks = ['set', 'string'] (Required)
  peer_address = string (Required)
  transit_gateway_attachment_id = string (Required)
  arn = string (Computed)
  bgp_asn = string (Optional, Computed)
  bgp_peer_address = string (Computed)
  bgp_transit_gateway_addresses = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  transit_gateway_address = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
