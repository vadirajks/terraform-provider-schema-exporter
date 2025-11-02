resource "aws_cloudwatch_event_api_destination" "name" {
  connection_arn = string (Required)
  http_method = string (Required)
  invocation_endpoint = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  invocation_rate_limit_per_second = number (Optional)
  region = string (Optional, Computed)
}
