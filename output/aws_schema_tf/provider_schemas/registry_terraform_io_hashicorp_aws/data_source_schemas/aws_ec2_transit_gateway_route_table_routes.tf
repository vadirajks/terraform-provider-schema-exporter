data "aws_ec2_transit_gateway_route_table_routes" "name" {
  transit_gateway_route_table_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  routes = ['list', ['object', {'destination_cidr_block': 'string', 'prefix_list_id': 'string', 'state': 'string', 'transit_gateway_route_table_announcement_id': 'string', 'type': 'string'}]] (Computed)

  filter block "set" (Required) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
