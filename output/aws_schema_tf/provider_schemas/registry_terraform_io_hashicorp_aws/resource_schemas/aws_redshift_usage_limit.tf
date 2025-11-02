resource "aws_redshift_usage_limit" "name" {
  amount = number (Required)
  cluster_identifier = string (Required)
  feature_type = string (Required)
  limit_type = string (Required)
  arn = string (Computed)
  breach_action = string (Optional)
  id = string (Optional, Computed)
  period = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
