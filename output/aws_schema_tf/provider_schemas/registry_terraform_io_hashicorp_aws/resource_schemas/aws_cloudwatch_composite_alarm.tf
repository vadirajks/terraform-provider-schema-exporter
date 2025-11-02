resource "aws_cloudwatch_composite_alarm" "name" {
  alarm_name = string (Required)
  alarm_rule = string (Required)
  actions_enabled = bool (Optional)
  alarm_actions = ['set', 'string'] (Optional)
  alarm_description = string (Optional)
  arn = string (Computed)
  id = string (Optional, Computed)
  insufficient_data_actions = ['set', 'string'] (Optional)
  ok_actions = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  actions_suppressor block "list" (Optional) {
    alarm = string (Required)
    extension_period = number (Required)
    wait_period = number (Required)
  }
}
