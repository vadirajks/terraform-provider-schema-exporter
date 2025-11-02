resource "aws_cloudwatch_log_index_policy" "name" {
  log_group_name = string (Required)
  policy_document = string (Required)
  region = string (Optional, Computed)
}
