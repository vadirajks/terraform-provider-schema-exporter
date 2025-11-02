resource "aws_vpn_gateway_attachment" "name" {
  vpc_id = string (Required)
  vpn_gateway_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
