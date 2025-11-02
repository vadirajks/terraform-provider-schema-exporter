data "aws_ec2_local_gateway" "name" {
  id = string (Optional, Computed)
  outpost_arn = string (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  state = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
