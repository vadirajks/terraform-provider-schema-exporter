data "aws_cloudwatch_log_groups" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  log_group_name_prefix = string (Optional)
  log_group_names = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
}
