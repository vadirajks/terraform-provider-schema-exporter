resource "aws_vpn_connection_route" "name" {
  destination_cidr_block = string (Required)
  vpn_connection_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
