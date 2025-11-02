resource "aws_redshiftserverless_usage_limit" "name" {
  amount = number (Required)
  resource_arn = string (Required)
  usage_type = string (Required)
  arn = string (Computed)
  breach_action = string (Optional)
  id = string (Optional, Computed)
  period = string (Optional)
  region = string (Optional, Computed)
}
