data "aws_auditmanager_framework" "name" {
  framework_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  compliance_type = string (Computed)
  control_sets = ['list', ['object', {'controls': ['set', ['object', {'id': 'string'}]], 'id': 'string', 'name': 'string'}]] (Computed)
  description = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
}
