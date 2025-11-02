data "aws_vpn_gateway" "name" {
  amazon_side_asn = string (Optional, Computed)
  arn = string (Computed)
  attached_vpc_id = string (Optional, Computed)
  availability_zone = string (Optional, Computed)
  id = string (Optional, Computed)
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
