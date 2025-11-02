data "aws_appconfig_configuration_profiles" "name" {
  application_id = string (Required)
  configuration_profile_ids = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
