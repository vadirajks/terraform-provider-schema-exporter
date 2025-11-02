resource "aws_route53_resolver_rule" "name" {
  domain_name = string (Required)
  rule_type = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  resolver_endpoint_id = string (Optional)
  share_status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  target_ip block "set" (Optional) {
    ip = string (Optional)
    ipv6 = string (Optional)
    port = number (Optional)
    protocol = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
