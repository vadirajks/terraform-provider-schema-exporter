resource "aws_vpc_dhcp_options" "name" {
  arn = string (Computed)
  domain_name = string (Optional)
  domain_name_servers = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  ipv6_address_preferred_lease_time = string (Optional)
  netbios_name_servers = ['list', 'string'] (Optional)
  netbios_node_type = string (Optional)
  ntp_servers = ['list', 'string'] (Optional)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
