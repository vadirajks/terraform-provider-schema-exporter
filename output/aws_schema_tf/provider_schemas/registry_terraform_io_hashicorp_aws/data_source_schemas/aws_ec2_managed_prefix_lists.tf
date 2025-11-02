data "aws_ec2_managed_prefix_lists" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
