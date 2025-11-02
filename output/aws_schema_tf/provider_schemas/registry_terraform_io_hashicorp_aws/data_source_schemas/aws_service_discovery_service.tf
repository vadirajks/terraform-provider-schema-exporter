data "aws_service_discovery_service" "name" {
  name = string (Required)
  namespace_id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  dns_config = ['list', ['object', {'dns_records': ['list', ['object', {'ttl': 'number', 'type': 'string'}]], 'namespace_id': 'string', 'routing_policy': 'string'}]] (Computed)
  health_check_config = ['list', ['object', {'failure_threshold': 'number', 'resource_path': 'string', 'type': 'string'}]] (Computed)
  health_check_custom_config = ['list', ['object', {'failure_threshold': 'number'}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
}
