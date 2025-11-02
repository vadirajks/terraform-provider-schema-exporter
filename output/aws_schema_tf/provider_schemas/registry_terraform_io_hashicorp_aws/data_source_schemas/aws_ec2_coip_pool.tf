data "aws_ec2_coip_pool" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  local_gateway_route_table_id = string (Optional, Computed)
  pool_cidrs = ['set', 'string'] (Computed)
  pool_id = string (Optional, Computed)
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
