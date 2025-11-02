resource "aws_route53recoverycontrolconfig_safety_rule" "name" {
  control_panel_arn = string (Required)
  name = string (Required)
  wait_period_ms = number (Required)
  arn = string (Computed)
  asserted_controls = ['list', 'string'] (Optional)
  gating_controls = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  target_controls = ['list', 'string'] (Optional)

  rule_config block "list" (Required) {
    inverted = bool (Required)
    threshold = number (Required)
    type = string (Required)
  }
}
