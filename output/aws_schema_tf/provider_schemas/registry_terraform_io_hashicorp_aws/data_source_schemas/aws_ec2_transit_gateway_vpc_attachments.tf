data "aws_ec2_transit_gateway_vpc_attachments" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
