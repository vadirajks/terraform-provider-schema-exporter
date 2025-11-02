resource "aws_cloudwatch_dashboard" "name" {
  dashboard_body = string (Required)
  dashboard_name = string (Required)
  dashboard_arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
