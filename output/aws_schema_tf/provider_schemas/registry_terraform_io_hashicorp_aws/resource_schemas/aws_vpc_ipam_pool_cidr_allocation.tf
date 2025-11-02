resource "aws_vpc_ipam_pool_cidr_allocation" "name" {
  ipam_pool_id = string (Required)
  cidr = string (Optional, Computed)
  description = string (Optional)
  disallowed_cidrs = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  ipam_pool_allocation_id = string (Computed)
  netmask_length = number (Optional, Computed)
  region = string (Optional, Computed)
  resource_id = string (Computed)
  resource_owner = string (Computed)
  resource_type = string (Computed)
}
