data "aws_ec2_local_gateway_virtual_interface_group" "name" {
  id = string (Optional, Computed)
  local_gateway_id = string (Optional, Computed)
  local_gateway_virtual_interface_ids = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
