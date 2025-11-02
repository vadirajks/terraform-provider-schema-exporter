resource "aws_placement_group" "name" {
  name = string (Required)
  strategy = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  partition_count = number (Optional, Computed)
  placement_group_id = string (Computed)
  region = string (Optional, Computed)
  spread_level = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
