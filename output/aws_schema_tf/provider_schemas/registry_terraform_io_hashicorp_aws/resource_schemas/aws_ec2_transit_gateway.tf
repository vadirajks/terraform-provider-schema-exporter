resource "aws_ec2_transit_gateway" "name" {
  amazon_side_asn = number (Optional)
  arn = string (Computed)
  association_default_route_table_id = string (Computed)
  auto_accept_shared_attachments = string (Optional)
  default_route_table_association = string (Optional)
  default_route_table_propagation = string (Optional)
  description = string (Optional)
  dns_support = string (Optional)
  id = string (Optional, Computed)
  multicast_support = string (Optional)
  owner_id = string (Computed)
  propagation_default_route_table_id = string (Computed)
  region = string (Optional, Computed)
  security_group_referencing_support = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  transit_gateway_cidr_blocks = ['set', 'string'] (Optional)
  vpn_ecmp_support = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
