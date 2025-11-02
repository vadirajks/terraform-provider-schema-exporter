resource "aws_default_vpc_dhcp_options" "name" {
  arn = string (Computed)
  domain_name = string (Computed)
  domain_name_servers = string (Computed)
  id = string (Optional, Computed)
  ipv6_address_preferred_lease_time = string (Computed)
  netbios_name_servers = string (Computed)
  netbios_node_type = string (Computed)
  ntp_servers = string (Computed)
  owner_id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
