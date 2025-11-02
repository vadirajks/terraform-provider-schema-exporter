resource "aws_ec2_availability_zone_group" "name" {
  group_name = string (Required)
  opt_in_status = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
