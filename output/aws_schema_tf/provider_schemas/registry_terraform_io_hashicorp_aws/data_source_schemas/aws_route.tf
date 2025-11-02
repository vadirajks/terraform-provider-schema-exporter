data "aws_route" "name" {
  route_table_id = string (Required)
  carrier_gateway_id = string (Optional, Computed)
  core_network_arn = string (Optional, Computed)
  destination_cidr_block = string (Optional, Computed)
  destination_ipv6_cidr_block = string (Optional, Computed)
  destination_prefix_list_id = string (Optional, Computed)
  egress_only_gateway_id = string (Optional, Computed)
  gateway_id = string (Optional, Computed)
  id = string (Optional, Computed)
  instance_id = string (Optional, Computed)
  local_gateway_id = string (Optional, Computed)
  nat_gateway_id = string (Optional, Computed)
  network_interface_id = string (Optional, Computed)
  region = string (Optional, Computed)
  transit_gateway_id = string (Optional, Computed)
  vpc_peering_connection_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
