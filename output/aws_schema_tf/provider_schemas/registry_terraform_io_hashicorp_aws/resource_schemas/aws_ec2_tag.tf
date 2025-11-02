resource "aws_ec2_tag" "name" {
  key = string (Required)
  resource_id = string (Required)
  value = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
