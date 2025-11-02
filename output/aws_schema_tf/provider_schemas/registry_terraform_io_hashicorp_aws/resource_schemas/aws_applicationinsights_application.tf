resource "aws_applicationinsights_application" "name" {
  resource_group_name = string (Required)
  arn = string (Computed)
  auto_config_enabled = bool (Optional)
  auto_create = bool (Optional)
  cwe_monitor_enabled = bool (Optional)
  grouping_type = string (Optional)
  id = string (Optional, Computed)
  ops_center_enabled = bool (Optional)
  ops_item_sns_topic_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
