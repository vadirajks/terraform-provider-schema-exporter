data "aws_waf_subscribed_rule_group" "name" {
  id = string (Optional, Computed)
  metric_name = string (Optional)
  name = string (Optional)
}
