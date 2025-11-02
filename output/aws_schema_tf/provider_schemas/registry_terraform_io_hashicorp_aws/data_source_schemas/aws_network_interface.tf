data "aws_network_interface" "name" {
  arn = string (Computed)
  association = ['list', ['object', {'allocation_id': 'string', 'association_id': 'string', 'carrier_ip': 'string', 'customer_owned_ip': 'string', 'ip_owner_id': 'string', 'public_dns_name': 'string', 'public_ip': 'string'}]] (Computed)
  attachment = ['list', ['object', {'attachment_id': 'string', 'device_index': 'number', 'instance_id': 'string', 'instance_owner_id': 'string', 'network_card_index': 'number'}]] (Computed)
  availability_zone = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  interface_type = string (Computed)
  ipv6_addresses = ['set', 'string'] (Computed)
  mac_address = string (Computed)
  outpost_arn = string (Computed)
  owner_id = string (Computed)
  private_dns_name = string (Computed)
  private_ip = string (Computed)
  private_ips = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  requester_id = string (Computed)
  security_groups = ['set', 'string'] (Computed)
  subnet_id = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
