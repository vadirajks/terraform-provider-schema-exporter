data "aws_vpn_connection" "name" {
  category = string (Computed)
  core_network_arn = string (Computed)
  core_network_attachment_arn = string (Computed)
  customer_gateway_configuration = string (Computed)
  customer_gateway_id = string (Computed)
  gateway_association_state = string (Computed)
  pre_shared_key_arn = string (Computed)
  region = string (Optional, Computed)
  routes = ['list', ['object', {'destination_cidr_block': 'string', 'source': 'string', 'state': 'string'}]] (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Computed)
  transit_gateway_id = string (Computed)
  type = string (Computed)
  vgw_telemetries = ['list', ['object', {'accepted_route_count': 'number', 'last_status_change': 'string', 'outside_ip_address': 'string', 'status': 'string', 'status_message': 'string'}]] (Computed)
  vpn_connection_id = string (Optional, Computed)
  vpn_gateway_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
