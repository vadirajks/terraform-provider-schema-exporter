resource "aws_networkmanager_transit_gateway_route_table_attachment" "name" {
  peering_id = string (Required)
  transit_gateway_route_table_arn = string (Required)
  arn = string (Computed)
  attachment_policy_rule_number = number (Computed)
  attachment_type = string (Computed)
  core_network_arn = string (Computed)
  core_network_id = string (Computed)
  edge_location = string (Computed)
  id = string (Optional, Computed)
  owner_account_id = string (Computed)
  resource_arn = string (Computed)
  segment_name = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
