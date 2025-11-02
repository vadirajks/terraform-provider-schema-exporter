resource "aws_route53_resolver_config" "name" {
  autodefined_reverse_flag = string (Required)
  resource_id = string (Required)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
}
