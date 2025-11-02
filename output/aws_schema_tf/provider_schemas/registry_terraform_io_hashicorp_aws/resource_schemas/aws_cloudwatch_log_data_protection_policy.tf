resource "aws_cloudwatch_log_data_protection_policy" "name" {
  log_group_name = string (Required)
  policy_document = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
