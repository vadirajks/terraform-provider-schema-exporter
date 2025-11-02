resource "aws_appconfig_configuration_profile" "name" {
  application_id = string (Required)
  location_uri = string (Required)
  name = string (Required)
  arn = string (Computed)
  configuration_profile_id = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  kms_key_identifier = string (Optional)
  region = string (Optional, Computed)
  retrieval_role_arn = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)

  validator block "set" (Optional) {
    type = string (Required)
    content = string (Optional)
  }
}
