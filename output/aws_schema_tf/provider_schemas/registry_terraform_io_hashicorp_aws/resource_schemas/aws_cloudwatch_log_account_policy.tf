resource "aws_cloudwatch_log_account_policy" "name" {
  policy_document = string (Required)
  policy_name = string (Required)
  policy_type = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  scope = string (Optional)
  selection_criteria = string (Optional)
}
