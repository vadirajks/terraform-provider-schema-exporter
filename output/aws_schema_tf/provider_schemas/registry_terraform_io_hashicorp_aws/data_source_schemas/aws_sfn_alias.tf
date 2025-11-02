data "aws_sfn_alias" "name" {
  name = string (Required)
  statemachine_arn = string (Required)
  arn = string (Computed)
  creation_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  routing_configuration = ['list', ['object', {'state_machine_version_arn': 'string', 'weight': 'number'}]] (Computed)
}
