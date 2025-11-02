resource "aws_route53_resolver_firewall_config" "name" {
  resource_id = string (Required)
  firewall_fail_open = string (Optional, Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
}
