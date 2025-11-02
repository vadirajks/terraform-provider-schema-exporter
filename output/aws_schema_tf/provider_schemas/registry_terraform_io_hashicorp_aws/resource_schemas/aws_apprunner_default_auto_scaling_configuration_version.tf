resource "aws_apprunner_default_auto_scaling_configuration_version" "name" {
  auto_scaling_configuration_arn = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
}
