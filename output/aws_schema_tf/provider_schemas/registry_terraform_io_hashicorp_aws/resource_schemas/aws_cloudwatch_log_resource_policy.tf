resource "aws_cloudwatch_log_resource_policy" "name" {
  policy_document = string (Required)
  policy_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
