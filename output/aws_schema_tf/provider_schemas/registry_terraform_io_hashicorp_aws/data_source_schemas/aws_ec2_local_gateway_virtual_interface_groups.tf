data "aws_ec2_local_gateway_virtual_interface_groups" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  local_gateway_virtual_interface_ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
