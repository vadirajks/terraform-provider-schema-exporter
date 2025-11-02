resource "aws_networkmanager_connect_attachment" "name" {
  core_network_id = string (Required)
  edge_location = string (Required)
  transport_attachment_id = string (Required)
  arn = string (Computed)
  attachment_id = string (Computed)
  attachment_policy_rule_number = number (Computed)
  attachment_type = string (Computed)
  core_network_arn = string (Computed)
  id = string (Optional, Computed)
  owner_account_id = string (Computed)
  resource_arn = string (Computed)
  segment_name = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  options block "list" (Required) {
    protocol = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
