data "aws_ec2_transit_gateway_vpc_attachment" "name" {
  appliance_mode_support = string (Computed)
  arn = string (Computed)
  dns_support = string (Computed)
  id = string (Optional, Computed)
  ipv6_support = string (Computed)
  region = string (Optional, Computed)
  security_group_referencing_support = string (Computed)
  subnet_ids = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  transit_gateway_id = string (Computed)
  vpc_id = string (Computed)
  vpc_owner_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
