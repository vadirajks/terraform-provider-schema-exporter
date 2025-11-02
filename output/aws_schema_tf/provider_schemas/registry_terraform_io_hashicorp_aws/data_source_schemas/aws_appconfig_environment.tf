data "aws_appconfig_environment" "name" {
  application_id = string (Required)
  environment_id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  monitor = ['set', ['object', {'alarm_arn': 'string', 'alarm_role_arn': 'string'}]] (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
