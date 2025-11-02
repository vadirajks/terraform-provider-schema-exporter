resource "aws_cloudwatch_log_stream" "name" {
  log_group_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
