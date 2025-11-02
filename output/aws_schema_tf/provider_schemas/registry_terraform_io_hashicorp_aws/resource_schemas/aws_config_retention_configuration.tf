resource "aws_config_retention_configuration" "name" {
  retention_period_in_days = number (Required)
  id = string (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
}
