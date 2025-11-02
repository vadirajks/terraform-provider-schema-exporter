data "aws_vpc_ipam_pool_cidrs" "name" {
  ipam_pool_id = string (Required)
  id = string (Optional, Computed)
  ipam_pool_cidrs = ['set', ['object', {'cidr': 'string', 'state': 'string'}]] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
