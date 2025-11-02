resource "aws_ec2_transit_gateway_multicast_group_member" "name" {
  group_ip_address = string (Required)
  network_interface_id = string (Required)
  transit_gateway_multicast_domain_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
