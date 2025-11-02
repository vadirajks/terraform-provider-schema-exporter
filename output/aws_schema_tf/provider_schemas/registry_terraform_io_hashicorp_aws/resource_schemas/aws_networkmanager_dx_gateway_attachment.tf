resource "aws_networkmanager_dx_gateway_attachment" "name" {
  core_network_id = string (Required)
  direct_connect_gateway_arn = string (Required)
  edge_locations = ['list', 'string'] (Required)
  arn = string (Computed)
  attachment_policy_rule_number = number (Computed)
  attachment_type = string (Computed)
  core_network_arn = string (Computed)
  id = string (Computed)
  owner_account_id = string (Computed)
  segment_name = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
