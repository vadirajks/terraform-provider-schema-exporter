resource "aws_vpclattice_resource_gateway" "name" {
  name = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  vpc_id = string (Required)
  arn = string (Computed)
  id = string (Computed)
  ip_address_type = string (Optional, Computed)
  ipv4_addresses_per_eni = number (Optional, Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
