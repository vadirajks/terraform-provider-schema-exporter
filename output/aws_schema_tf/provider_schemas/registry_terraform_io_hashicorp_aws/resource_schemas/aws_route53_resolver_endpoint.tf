resource "aws_route53_resolver_endpoint" "name" {
  direction = string (Required)
  security_group_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  host_vpc_id = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  protocols = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  resolver_endpoint_type = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  ip_address block "set" (Required) {
    subnet_id = string (Required)
    ip = string (Optional, Computed)
    ip_id = string (Computed)
    ipv6 = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
