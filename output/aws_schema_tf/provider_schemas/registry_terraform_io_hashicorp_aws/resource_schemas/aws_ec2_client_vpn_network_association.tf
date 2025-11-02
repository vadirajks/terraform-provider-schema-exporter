resource "aws_ec2_client_vpn_network_association" "name" {
  client_vpn_endpoint_id = string (Required)
  subnet_id = string (Required)
  association_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
