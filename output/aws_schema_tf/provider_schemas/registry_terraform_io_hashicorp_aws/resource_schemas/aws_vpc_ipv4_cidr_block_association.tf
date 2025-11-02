resource "aws_vpc_ipv4_cidr_block_association" "name" {
  vpc_id = string (Required)
  cidr_block = string (Optional, Computed)
  id = string (Optional, Computed)
  ipv4_ipam_pool_id = string (Optional)
  ipv4_netmask_length = number (Optional)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
