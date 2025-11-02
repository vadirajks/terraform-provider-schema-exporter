resource "aws_networkmanager_transit_gateway_peering" "name" {
  core_network_id = string (Required)
  transit_gateway_arn = string (Required)
  arn = string (Computed)
  core_network_arn = string (Computed)
  edge_location = string (Computed)
  id = string (Optional, Computed)
  owner_account_id = string (Computed)
  peering_type = string (Computed)
  resource_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  transit_gateway_peering_attachment_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
