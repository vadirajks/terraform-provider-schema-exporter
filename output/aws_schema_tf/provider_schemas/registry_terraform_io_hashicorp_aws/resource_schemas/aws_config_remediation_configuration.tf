resource "aws_config_remediation_configuration" "name" {
  config_rule_name = string (Required)
  target_id = string (Required)
  target_type = string (Required)
  arn = string (Computed)
  automatic = bool (Optional)
  id = string (Optional, Computed)
  maximum_automatic_attempts = number (Optional)
  region = string (Optional, Computed)
  resource_type = string (Optional)
  retry_attempt_seconds = number (Optional)
  target_version = string (Optional)

  execution_controls block "list" (Optional) {

    ssm_controls block "list" (Optional) {
      concurrent_execution_rate_percentage = number (Optional)
      error_percentage = number (Optional)
    }
  }

  parameter block "list" (Optional) {
    name = string (Required)
    resource_value = string (Optional)
    static_value = string (Optional)
    static_values = ['list', 'string'] (Optional, Computed)
  }
}
