resource "aws_waf_rule" "name" {
  metric_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  predicates block "set" (Optional) {
    data_id = string (Required)
    negated = bool (Required)
    type = string (Required)
  }
}
