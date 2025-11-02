data "aws_wafv2_rule_group" "name" {
  name = string (Required)
  scope = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
