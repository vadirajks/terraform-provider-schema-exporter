data "aws_route_table" "name" {
  arn = string (Computed)
  associations = ['list', ['object', {'gateway_id': 'string', 'main': 'bool', 'route_table_association_id': 'string', 'route_table_id': 'string', 'subnet_id': 'string'}]] (Computed)
  gateway_id = string (Optional, Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  route_table_id = string (Optional, Computed)
  routes = ['list', ['object', {'carrier_gateway_id': 'string', 'cidr_block': 'string', 'core_network_arn': 'string', 'destination_prefix_list_id': 'string', 'egress_only_gateway_id': 'string', 'gateway_id': 'string', 'instance_id': 'string', 'ipv6_cidr_block': 'string', 'local_gateway_id': 'string', 'nat_gateway_id': 'string', 'network_interface_id': 'string', 'transit_gateway_id': 'string', 'vpc_endpoint_id': 'string', 'vpc_peering_connection_id': 'string'}]] (Computed)
  subnet_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
