resource "aws_codecommit_trigger" "name" {
  repository_name = string (Required)
  configuration_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  trigger block "set" (Required) {
    destination_arn = string (Required)
    events = ['list', 'string'] (Required)
    name = string (Required)
    branches = ['list', 'string'] (Optional)
    custom_data = string (Optional)
  }
}
