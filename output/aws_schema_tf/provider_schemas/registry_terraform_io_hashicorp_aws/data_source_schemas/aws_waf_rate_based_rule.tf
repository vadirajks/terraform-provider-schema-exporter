data "aws_waf_rate_based_rule" "name" {
  name = string (Required)
  id = string (Optional, Computed)
}
