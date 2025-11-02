resource "aws_swf_domain" "name" {
  workflow_execution_retention_period_in_days = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
