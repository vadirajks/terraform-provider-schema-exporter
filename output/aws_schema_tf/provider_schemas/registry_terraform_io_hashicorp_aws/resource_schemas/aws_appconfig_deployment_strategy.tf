resource "aws_appconfig_deployment_strategy" "name" {
  deployment_duration_in_minutes = number (Required)
  growth_factor = number (Required)
  name = string (Required)
  replicate_to = string (Required)
  arn = string (Computed)
  description = string (Optional)
  final_bake_time_in_minutes = number (Optional)
  growth_type = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
