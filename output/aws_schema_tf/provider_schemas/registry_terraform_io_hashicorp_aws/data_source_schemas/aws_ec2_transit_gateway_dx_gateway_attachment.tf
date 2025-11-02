data "aws_ec2_transit_gateway_dx_gateway_attachment" "name" {
  arn = string (Computed)
  dx_gateway_id = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_id = string (Optional)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
