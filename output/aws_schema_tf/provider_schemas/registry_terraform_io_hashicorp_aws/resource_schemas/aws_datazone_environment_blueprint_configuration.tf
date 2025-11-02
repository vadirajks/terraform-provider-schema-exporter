resource "aws_datazone_environment_blueprint_configuration" "name" {
  domain_id = string (Required)
  enabled_regions = ['list', 'string'] (Required)
  environment_blueprint_id = string (Required)
  manage_access_role_arn = string (Optional)
  provisioning_role_arn = string (Optional)
  region = string (Optional, Computed)
  regional_parameters = ['map', ['map', 'string']] (Optional)
}
