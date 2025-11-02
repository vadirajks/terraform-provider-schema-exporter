resource "aws_route53_resolver_query_log_config_association" "name" {
  resolver_query_log_config_id = string (Required)
  resource_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
