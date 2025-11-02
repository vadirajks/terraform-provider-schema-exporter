resource "aws_default_route_table" "name" {
  default_route_table_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  propagating_vgws = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  route = ['set', ['object', {'cidr_block': 'string', 'core_network_arn': 'string', 'destination_prefix_list_id': 'string', 'egress_only_gateway_id': 'string', 'gateway_id': 'string', 'instance_id': 'string', 'ipv6_cidr_block': 'string', 'nat_gateway_id': 'string', 'network_interface_id': 'string', 'transit_gateway_id': 'string', 'vpc_endpoint_id': 'string', 'vpc_peering_connection_id': 'string'}]] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
