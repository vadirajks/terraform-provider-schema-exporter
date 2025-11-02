resource "aws_appconfig_environment" "name" {
  application_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional, Computed)
  environment_id = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  monitor block "set" (Optional) {
    alarm_arn = string (Required)
    alarm_role_arn = string (Optional)
  }
}
