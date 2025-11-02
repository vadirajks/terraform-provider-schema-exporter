resource "aws_ec2_transit_gateway_multicast_domain_association" "name" {
  subnet_id = string (Required)
  transit_gateway_attachment_id = string (Required)
  transit_gateway_multicast_domain_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
