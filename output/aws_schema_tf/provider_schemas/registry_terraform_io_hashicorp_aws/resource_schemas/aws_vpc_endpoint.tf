resource "aws_vpc_endpoint" "name" {
  vpc_id = string (Required)
  arn = string (Computed)
  auto_accept = bool (Optional)
  cidr_blocks = ['list', 'string'] (Computed)
  dns_entry = ['list', ['object', {'dns_name': 'string', 'hosted_zone_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  ip_address_type = string (Optional, Computed)
  network_interface_ids = ['set', 'string'] (Computed)
  owner_id = string (Computed)
  policy = string (Optional, Computed)
  prefix_list_id = string (Computed)
  private_dns_enabled = bool (Optional, Computed)
  region = string (Optional, Computed)
  requester_managed = bool (Computed)
  resource_configuration_arn = string (Optional)
  route_table_ids = ['set', 'string'] (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  service_name = string (Optional)
  service_network_arn = string (Optional)
  service_region = string (Optional, Computed)
  state = string (Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_endpoint_type = string (Optional)

  dns_options block "list" (Optional) {
    dns_record_ip_type = string (Optional, Computed)
    private_dns_only_for_inbound_resolver_endpoint = bool (Optional)
  }

  subnet_configuration block "set" (Optional) {
    ipv4 = string (Optional)
    ipv6 = string (Optional)
    subnet_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
