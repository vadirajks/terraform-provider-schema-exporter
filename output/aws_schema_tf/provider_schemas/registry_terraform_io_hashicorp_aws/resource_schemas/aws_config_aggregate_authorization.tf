resource "aws_config_aggregate_authorization" "name" {
  account_id = string (Required)
  arn = string (Computed)
  authorized_aws_region = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
