resource "aws_redshiftserverless_endpoint_access" "name" {
  endpoint_name = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  workgroup_name = string (Required)
  address = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_account = string (Optional)
  port = number (Computed)
  region = string (Optional, Computed)
  vpc_endpoint = ['list', ['object', {'network_interface': ['list', ['object', {'availability_zone': 'string', 'network_interface_id': 'string', 'private_ip_address': 'string', 'subnet_id': 'string'}]], 'vpc_endpoint_id': 'string', 'vpc_id': 'string'}]] (Computed)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)
}
