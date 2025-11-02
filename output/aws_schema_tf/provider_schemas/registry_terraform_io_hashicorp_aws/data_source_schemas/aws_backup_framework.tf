data "aws_backup_framework" "name" {
  name = string (Required)
  arn = string (Computed)
  control = ['list', ['object', {'input_parameter': ['list', ['object', {'name': 'string', 'value': 'string'}]], 'name': 'string', 'scope': ['list', ['object', {'compliance_resource_ids': ['list', 'string'], 'compliance_resource_types': ['list', 'string'], 'tags': ['map', 'string']}]]}]] (Computed)
  creation_time = string (Computed)
  deployment_status = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
