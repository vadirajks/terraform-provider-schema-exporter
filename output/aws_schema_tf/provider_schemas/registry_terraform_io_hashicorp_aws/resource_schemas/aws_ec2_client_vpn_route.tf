resource "aws_ec2_client_vpn_route" "name" {
  client_vpn_endpoint_id = string (Required)
  destination_cidr_block = string (Required)
  target_vpc_subnet_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  origin = string (Computed)
  region = string (Optional, Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
