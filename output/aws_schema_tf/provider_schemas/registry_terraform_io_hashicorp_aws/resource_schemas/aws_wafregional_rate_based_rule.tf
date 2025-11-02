resource "aws_wafregional_rate_based_rule" "name" {
  metric_name = string (Required)
  name = string (Required)
  rate_key = string (Required)
  rate_limit = number (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  predicate block "set" (Optional) {
    data_id = string (Required)
    negated = bool (Required)
    type = string (Required)
  }
}
