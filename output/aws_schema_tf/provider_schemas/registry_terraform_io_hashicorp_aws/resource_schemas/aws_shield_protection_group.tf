resource "aws_shield_protection_group" "name" {
  aggregation = string (Required)
  pattern = string (Required)
  protection_group_id = string (Required)
  id = string (Optional, Computed)
  members = ['list', 'string'] (Optional)
  protection_group_arn = string (Computed)
  resource_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
