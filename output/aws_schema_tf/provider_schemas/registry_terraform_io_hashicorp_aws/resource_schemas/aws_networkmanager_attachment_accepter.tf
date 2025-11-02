resource "aws_networkmanager_attachment_accepter" "name" {
  attachment_id = string (Required)
  attachment_type = string (Required)
  attachment_policy_rule_number = number (Computed)
  core_network_arn = string (Computed)
  core_network_id = string (Computed)
  edge_location = string (Computed)
  edge_locations = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  owner_account_id = string (Computed)
  resource_arn = string (Computed)
  segment_name = string (Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
