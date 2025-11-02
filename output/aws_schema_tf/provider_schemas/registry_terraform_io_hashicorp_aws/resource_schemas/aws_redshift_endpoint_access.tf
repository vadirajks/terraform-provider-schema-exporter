resource "aws_redshift_endpoint_access" "name" {
  cluster_identifier = string (Required)
  endpoint_name = string (Required)
  subnet_group_name = string (Required)
  address = string (Computed)
  id = string (Optional, Computed)
  port = number (Computed)
  region = string (Optional, Computed)
  resource_owner = string (Optional, Computed)
  vpc_endpoint = ['list', ['object', {'network_interface': ['list', ['object', {'availability_zone': 'string', 'network_interface_id': 'string', 'private_ip_address': 'string', 'subnet_id': 'string'}]], 'vpc_endpoint_id': 'string', 'vpc_id': 'string'}]] (Computed)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)
}
