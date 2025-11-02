data "aws_appconfig_environments" "name" {
  application_id = string (Required)
  environment_ids = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
