data "aws_vpc" "name" {
  arn = string (Computed)
  cidr_block = string (Optional, Computed)
  cidr_block_associations = ['list', ['object', {'association_id': 'string', 'cidr_block': 'string', 'state': 'string'}]] (Computed)
  default = bool (Optional, Computed)
  dhcp_options_id = string (Optional, Computed)
  enable_dns_hostnames = bool (Computed)
  enable_dns_support = bool (Computed)
  enable_network_address_usage_metrics = bool (Computed)
  id = string (Optional, Computed)
  instance_tenancy = string (Computed)
  ipv6_association_id = string (Computed)
  ipv6_cidr_block = string (Computed)
  main_route_table_id = string (Computed)
  owner_id = string (Computed)
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
