data "aws_sfn_state_machine_versions" "name" {
  statemachine_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  statemachine_versions = ['list', 'string'] (Computed)
}
