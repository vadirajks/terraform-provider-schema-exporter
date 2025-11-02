resource "aws_vpc_ipv6_cidr_block_association" "name" {
  vpc_id = string (Required)
  assign_generated_ipv6_cidr_block = bool (Optional, Computed)
  id = string (Optional, Computed)
  ip_source = string (Computed)
  ipv6_address_attribute = string (Computed)
  ipv6_cidr_block = string (Optional, Computed)
  ipv6_ipam_pool_id = string (Optional)
  ipv6_netmask_length = number (Optional)
  ipv6_pool = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
