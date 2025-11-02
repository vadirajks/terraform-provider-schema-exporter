data "aws_ec2_transit_gateway_connect" "name" {
  id = string (Optional, Computed)
  protocol = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_connect_id = string (Optional, Computed)
  transit_gateway_id = string (Computed)
  transport_attachment_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
