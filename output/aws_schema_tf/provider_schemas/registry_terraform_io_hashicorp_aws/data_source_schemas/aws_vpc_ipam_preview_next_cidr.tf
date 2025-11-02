data "aws_vpc_ipam_preview_next_cidr" "name" {
  ipam_pool_id = string (Required)
  cidr = string (Computed)
  disallowed_cidrs = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  netmask_length = number (Optional)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
