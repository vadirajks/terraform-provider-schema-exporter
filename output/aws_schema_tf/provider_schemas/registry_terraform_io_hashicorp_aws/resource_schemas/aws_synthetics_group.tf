resource "aws_synthetics_group" "name" {
  name = string (Required)
  arn = string (Computed)
  group_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
