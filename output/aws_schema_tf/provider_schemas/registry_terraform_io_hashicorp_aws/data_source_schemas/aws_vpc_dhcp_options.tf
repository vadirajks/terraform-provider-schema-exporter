data "aws_vpc_dhcp_options" "name" {
  arn = string (Computed)
  dhcp_options_id = string (Optional, Computed)
  domain_name = string (Computed)
  domain_name_servers = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  ipv6_address_preferred_lease_time = string (Computed)
  netbios_name_servers = ['list', 'string'] (Computed)
  netbios_node_type = string (Computed)
  ntp_servers = ['list', 'string'] (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
