resource "aws_waf_rule_group" "name" {
  metric_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  activated_rule block "set" (Optional) {
    priority = number (Required)
    rule_id = string (Required)
    type = string (Optional)

    action block "list" (Required) {
      type = string (Required)
    }
  }
}
