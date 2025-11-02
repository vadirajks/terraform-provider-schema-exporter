data "aws_redshiftserverless_workgroup" "name" {
  workgroup_name = string (Required)
  arn = string (Computed)
  endpoint = ['list', ['object', {'address': 'string', 'port': 'number', 'vpc_endpoint': ['list', ['object', {'network_interface': ['list', ['object', {'availability_zone': 'string', 'network_interface_id': 'string', 'private_ip_address': 'string', 'subnet_id': 'string'}]], 'vpc_endpoint_id': 'string', 'vpc_id': 'string'}]]}]] (Computed)
  enhanced_vpc_routing = bool (Computed)
  id = string (Optional, Computed)
  namespace_name = string (Computed)
  publicly_accessible = bool (Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Computed)
  subnet_ids = ['set', 'string'] (Computed)
  track_name = string (Computed)
  workgroup_id = string (Computed)
}
