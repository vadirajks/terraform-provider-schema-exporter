resource "aws_networkfirewall_firewall" "name" {
  firewall_policy_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  availability_zone_change_protection = bool (Optional)
  delete_protection = bool (Optional)
  description = string (Optional)
  enabled_analysis_types = ['set', 'string'] (Optional)
  firewall_policy_change_protection = bool (Optional)
  firewall_status = ['list', ['object', {'sync_states': ['set', ['object', {'attachment': ['list', ['object', {'endpoint_id': 'string', 'subnet_id': 'string'}]], 'availability_zone': 'string'}]], 'transit_gateway_attachment_sync_states': ['list', ['object', {'attachment_id': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subnet_change_protection = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  transit_gateway_id = string (Optional)
  transit_gateway_owner_account_id = string (Computed)
  update_token = string (Computed)
  vpc_id = string (Optional)

  availability_zone_mapping block "set" (Optional) {
    availability_zone_id = string (Required)
  }

  encryption_configuration block "list" (Optional) {
    type = string (Required)
    key_id = string (Optional)
  }

  subnet_mapping block "set" (Optional) {
    subnet_id = string (Required)
    ip_address_type = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
