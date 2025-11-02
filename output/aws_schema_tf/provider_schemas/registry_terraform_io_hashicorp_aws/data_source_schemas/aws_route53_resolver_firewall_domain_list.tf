data "aws_route53_resolver_firewall_domain_list" "name" {
  firewall_domain_list_id = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  creator_request_id = string (Computed)
  domain_count = number (Computed)
  id = string (Optional, Computed)
  managed_owner_name = string (Computed)
  modification_time = string (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_message = string (Computed)
}
