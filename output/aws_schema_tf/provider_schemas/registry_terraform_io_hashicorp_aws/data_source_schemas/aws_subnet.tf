data "aws_subnet" "name" {
  arn = string (Computed)
  assign_ipv6_address_on_creation = bool (Computed)
  availability_zone = string (Optional, Computed)
  availability_zone_id = string (Optional, Computed)
  available_ip_address_count = number (Computed)
  cidr_block = string (Optional, Computed)
  customer_owned_ipv4_pool = string (Computed)
  default_for_az = bool (Optional, Computed)
  enable_dns64 = bool (Computed)
  enable_lni_at_device_index = number (Computed)
  enable_resource_name_dns_a_record_on_launch = bool (Computed)
  enable_resource_name_dns_aaaa_record_on_launch = bool (Computed)
  id = string (Optional, Computed)
  ipv6_cidr_block = string (Optional, Computed)
  ipv6_cidr_block_association_id = string (Computed)
  ipv6_native = bool (Computed)
  map_customer_owned_ip_on_launch = bool (Computed)
  map_public_ip_on_launch = bool (Computed)
  outpost_arn = string (Computed)
  owner_id = string (Computed)
  private_dns_hostname_type_on_launch = string (Computed)
  region = string (Optional, Computed)
  state = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
