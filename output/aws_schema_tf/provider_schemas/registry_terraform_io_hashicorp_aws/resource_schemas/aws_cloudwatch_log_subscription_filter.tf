resource "aws_cloudwatch_log_subscription_filter" "name" {
  destination_arn = string (Required)
  filter_pattern = string (Required)
  log_group_name = string (Required)
  name = string (Required)
  distribution = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional, Computed)
}
