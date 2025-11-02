resource "aws_synthetics_group_association" "name" {
  canary_arn = string (Required)
  group_name = string (Required)
  group_arn = string (Computed)
  group_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
