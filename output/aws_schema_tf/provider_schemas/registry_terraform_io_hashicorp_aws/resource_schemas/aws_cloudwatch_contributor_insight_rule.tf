resource "aws_cloudwatch_contributor_insight_rule" "name" {
  rule_definition = string (Required)
  rule_name = string (Required)
  region = string (Optional, Computed)
  resource_arn = string (Computed)
  rule_state = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
