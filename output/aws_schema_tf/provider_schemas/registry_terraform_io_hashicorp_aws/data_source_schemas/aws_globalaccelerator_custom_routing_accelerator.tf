data "aws_globalaccelerator_custom_routing_accelerator" "name" {
  arn = string (Optional, Computed)
  attributes = ['list', ['object', {'flow_logs_enabled': 'bool', 'flow_logs_s3_bucket': 'string', 'flow_logs_s3_prefix': 'string'}]] (Computed)
  dns_name = string (Computed)
  enabled = bool (Computed)
  hosted_zone_id = string (Computed)
  id = string (Optional, Computed)
  ip_address_type = string (Computed)
  ip_sets = ['list', ['object', {'ip_addresses': ['list', 'string'], 'ip_family': 'string'}]] (Computed)
  name = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
