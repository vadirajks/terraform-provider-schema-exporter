resource "aws_ec2_transit_gateway_multicast_domain" "name" {
  transit_gateway_id = string (Required)
  arn = string (Computed)
  auto_accept_shared_associations = string (Optional)
  id = string (Optional, Computed)
  igmpv2_support = string (Optional)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  static_sources_support = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
