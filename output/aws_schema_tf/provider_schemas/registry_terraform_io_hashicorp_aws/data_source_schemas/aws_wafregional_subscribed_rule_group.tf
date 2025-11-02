data "aws_wafregional_subscribed_rule_group" "name" {
  id = string (Optional, Computed)
  metric_name = string (Optional)
  name = string (Optional)
  region = string (Optional, Computed)
}
