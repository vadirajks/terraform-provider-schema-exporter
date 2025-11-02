resource "aws_networkfirewall_vpc_endpoint_association" "name" {
  firewall_arn = string (Required)
  vpc_id = string (Required)
  description = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_endpoint_association_arn = string (Computed)
  vpc_endpoint_association_id = string (Computed)
  vpc_endpoint_association_status = ['list', ['object', {'association_sync_state': ['set', ['object', {'attachment': ['list', ['object', {'endpoint_id': 'string', 'status': 'string', 'status_message': 'string', 'subnet_id': 'string'}]], 'availability_zone': 'string'}]]}]] (Computed)

  subnet_mapping block "list" (Optional) {
    subnet_id = string (Required)
    ip_address_type = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
