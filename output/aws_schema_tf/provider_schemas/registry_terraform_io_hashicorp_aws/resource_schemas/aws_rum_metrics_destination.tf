resource "aws_rum_metrics_destination" "name" {
  app_monitor_name = string (Required)
  destination = string (Required)
  destination_arn = string (Optional)
  iam_role_arn = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
