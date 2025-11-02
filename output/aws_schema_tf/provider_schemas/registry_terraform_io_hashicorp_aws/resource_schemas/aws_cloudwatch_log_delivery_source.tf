resource "aws_cloudwatch_log_delivery_source" "name" {
  log_type = string (Required)
  name = string (Required)
  resource_arn = string (Required)
  arn = string (Computed)
  region = string (Optional, Computed)
  service = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
