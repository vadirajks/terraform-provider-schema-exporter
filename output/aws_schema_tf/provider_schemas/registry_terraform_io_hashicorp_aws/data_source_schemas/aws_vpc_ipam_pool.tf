data "aws_vpc_ipam_pool" "name" {
  address_family = string (Computed)
  allocation_default_netmask_length = number (Computed)
  allocation_max_netmask_length = number (Computed)
  allocation_min_netmask_length = number (Computed)
  allocation_resource_tags = ['map', 'string'] (Optional, Computed)
  arn = string (Computed)
  auto_import = bool (Computed)
  aws_service = string (Computed)
  description = string (Computed)
  id = string (Optional)
  ipam_pool_id = string (Optional)
  ipam_scope_id = string (Computed)
  ipam_scope_type = string (Computed)
  locale = string (Computed)
  pool_depth = number (Computed)
  publicly_advertisable = bool (Computed)
  region = string (Optional, Computed)
  source_ipam_pool_id = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
