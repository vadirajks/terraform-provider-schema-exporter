data "aws_ec2_transit_gateway_multicast_domain" "name" {
  arn = string (Computed)
  associations = ['list', ['object', {'subnet_id': 'string', 'transit_gateway_attachment_id': 'string'}]] (Computed)
  auto_accept_shared_associations = string (Computed)
  id = string (Optional, Computed)
  igmpv2_support = string (Computed)
  members = ['list', ['object', {'group_ip_address': 'string', 'network_interface_id': 'string'}]] (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  sources = ['list', ['object', {'group_ip_address': 'string', 'network_interface_id': 'string'}]] (Computed)
  state = string (Computed)
  static_sources_support = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_attachment_id = string (Computed)
  transit_gateway_id = string (Computed)
  transit_gateway_multicast_domain_id = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
