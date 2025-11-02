data "aws_cloudwatch_log_group" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_time = number (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  log_group_class = string (Computed)
  region = string (Optional, Computed)
  retention_in_days = number (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
