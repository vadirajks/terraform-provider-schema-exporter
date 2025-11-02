resource "aws_lightsail_instance_public_ports" "name" {
  instance_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  port_info block "set" (Required) {
    from_port = number (Required)
    protocol = string (Required)
    to_port = number (Required)
    cidr_list_aliases = ['set', 'string'] (Optional, Computed)
    cidrs = ['set', 'string'] (Optional, Computed)
    ipv6_cidrs = ['set', 'string'] (Optional, Computed)
  }
}
