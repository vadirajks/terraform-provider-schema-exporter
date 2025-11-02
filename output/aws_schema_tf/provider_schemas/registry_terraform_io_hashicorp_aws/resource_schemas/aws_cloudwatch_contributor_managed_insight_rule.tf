resource "aws_cloudwatch_contributor_managed_insight_rule" "name" {
  resource_arn = string (Required)
  template_name = string (Required)
  arn = string (Computed)
  region = string (Optional, Computed)
  rule_name = string (Computed)
  state = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
