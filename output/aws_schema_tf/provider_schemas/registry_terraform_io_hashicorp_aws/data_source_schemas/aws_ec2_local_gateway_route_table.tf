data "aws_ec2_local_gateway_route_table" "name" {
  id = string (Optional, Computed)
  local_gateway_id = string (Optional, Computed)
  local_gateway_route_table_id = string (Optional, Computed)
  outpost_arn = string (Optional, Computed)
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
