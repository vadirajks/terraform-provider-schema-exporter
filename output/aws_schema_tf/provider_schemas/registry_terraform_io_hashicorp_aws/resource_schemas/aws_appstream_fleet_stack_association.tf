resource "aws_appstream_fleet_stack_association" "name" {
  fleet_name = string (Required)
  stack_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
