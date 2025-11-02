data "aws_ec2_transit_gateway" "name" {
  amazon_side_asn = number (Computed)
  arn = string (Computed)
  association_default_route_table_id = string (Computed)
  auto_accept_shared_attachments = string (Computed)
  default_route_table_association = string (Computed)
  default_route_table_propagation = string (Computed)
  description = string (Computed)
  dns_support = string (Computed)
  id = string (Optional, Computed)
  multicast_support = string (Computed)
  owner_id = string (Computed)
  propagation_default_route_table_id = string (Computed)
  region = string (Optional, Computed)
  security_group_referencing_support = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_cidr_blocks = ['list', 'string'] (Computed)
  vpn_ecmp_support = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
