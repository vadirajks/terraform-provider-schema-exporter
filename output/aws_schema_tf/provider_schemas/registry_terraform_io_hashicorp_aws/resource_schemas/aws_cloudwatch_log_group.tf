resource "aws_cloudwatch_log_group" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  log_group_class = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  retention_in_days = number (Optional)
  skip_destroy = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
