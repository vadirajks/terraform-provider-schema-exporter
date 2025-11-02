resource "aws_route" "name" {
  route_table_id = string (Required)
  carrier_gateway_id = string (Optional)
  core_network_arn = string (Optional)
  destination_cidr_block = string (Optional)
  destination_ipv6_cidr_block = string (Optional)
  destination_prefix_list_id = string (Optional)
  egress_only_gateway_id = string (Optional)
  gateway_id = string (Optional)
  id = string (Optional, Computed)
  instance_id = string (Computed)
  instance_owner_id = string (Computed)
  local_gateway_id = string (Optional)
  nat_gateway_id = string (Optional)
  network_interface_id = string (Optional, Computed)
  origin = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  transit_gateway_id = string (Optional)
  vpc_endpoint_id = string (Optional)
  vpc_peering_connection_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
