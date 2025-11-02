resource "aws_prometheus_rule_group_namespace" "name" {
  data = string (Required)
  name = string (Required)
  workspace_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
