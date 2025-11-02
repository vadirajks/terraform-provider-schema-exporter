resource "aws_redshiftserverless_workgroup" "name" {
  namespace_name = string (Required)
  workgroup_name = string (Required)
  arn = string (Computed)
  base_capacity = number (Optional, Computed)
  endpoint = ['list', ['object', {'address': 'string', 'port': 'number', 'vpc_endpoint': ['list', ['object', {'network_interface': ['list', ['object', {'availability_zone': 'string', 'network_interface_id': 'string', 'private_ip_address': 'string', 'subnet_id': 'string'}]], 'vpc_endpoint_id': 'string', 'vpc_id': 'string'}]]}]] (Computed)
  enhanced_vpc_routing = bool (Optional)
  id = string (Optional, Computed)
  max_capacity = number (Optional)
  port = number (Optional, Computed)
  publicly_accessible = bool (Optional)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  track_name = string (Optional, Computed)
  workgroup_id = string (Computed)

  config_parameter block "set" (Optional) {
    parameter_key = string (Required)
    parameter_value = string (Required)
  }

  price_performance_target block "list" (Optional) {
    enabled = bool (Required)
    level = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
