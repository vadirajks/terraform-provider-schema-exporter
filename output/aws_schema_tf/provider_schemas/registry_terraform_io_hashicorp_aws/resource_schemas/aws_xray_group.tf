resource "aws_xray_group" "name" {
  filter_expression = string (Required)
  group_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  insights_configuration block "list" (Optional) {
    insights_enabled = bool (Required)
    notifications_enabled = bool (Optional, Computed)
  }
}
