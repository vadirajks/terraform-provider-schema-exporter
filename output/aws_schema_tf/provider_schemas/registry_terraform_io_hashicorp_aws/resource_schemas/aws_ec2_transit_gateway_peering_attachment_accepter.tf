resource "aws_ec2_transit_gateway_peering_attachment_accepter" "name" {
  transit_gateway_attachment_id = string (Required)
  id = string (Optional, Computed)
  peer_account_id = string (Computed)
  peer_region = string (Computed)
  peer_transit_gateway_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  transit_gateway_id = string (Computed)
}
