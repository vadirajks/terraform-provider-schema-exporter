resource "aws_route_table" "name" {
  vpc_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  propagating_vgws = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  route = ['set', ['object', {'carrier_gateway_id': 'string', 'cidr_block': 'string', 'core_network_arn': 'string', 'destination_prefix_list_id': 'string', 'egress_only_gateway_id': 'string', 'gateway_id': 'string', 'ipv6_cidr_block': 'string', 'local_gateway_id': 'string', 'nat_gateway_id': 'string', 'network_interface_id': 'string', 'transit_gateway_id': 'string', 'vpc_endpoint_id': 'string', 'vpc_peering_connection_id': 'string'}]] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
