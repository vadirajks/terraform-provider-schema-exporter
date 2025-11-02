resource "aws_cloudwatch_log_destination" "name" {
  name = string (Required)
  role_arn = string (Required)
  target_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
