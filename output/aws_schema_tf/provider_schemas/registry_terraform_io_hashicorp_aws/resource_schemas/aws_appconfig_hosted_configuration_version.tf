resource "aws_appconfig_hosted_configuration_version" "name" {
  application_id = string (Required)
  configuration_profile_id = string (Required)
  content = string (Required)
  content_type = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  version_number = number (Computed)
}
