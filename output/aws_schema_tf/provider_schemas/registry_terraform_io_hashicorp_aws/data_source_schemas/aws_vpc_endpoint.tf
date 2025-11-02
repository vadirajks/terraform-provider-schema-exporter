data "aws_vpc_endpoint" "name" {
  arn = string (Computed)
  cidr_blocks = ['list', 'string'] (Computed)
  dns_entry = ['list', ['object', {'dns_name': 'string', 'hosted_zone_id': 'string'}]] (Computed)
  dns_options = ['list', ['object', {'dns_record_ip_type': 'string', 'private_dns_only_for_inbound_resolver_endpoint': 'bool'}]] (Computed)
  id = string (Optional, Computed)
  ip_address_type = string (Computed)
  network_interface_ids = ['set', 'string'] (Computed)
  owner_id = string (Computed)
  policy = string (Computed)
  prefix_list_id = string (Computed)
  private_dns_enabled = bool (Computed)
  region = string (Optional, Computed)
  requester_managed = bool (Computed)
  route_table_ids = ['set', 'string'] (Computed)
  security_group_ids = ['set', 'string'] (Computed)
  service_name = string (Optional, Computed)
  state = string (Optional, Computed)
  subnet_ids = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_endpoint_type = string (Computed)
  vpc_id = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
