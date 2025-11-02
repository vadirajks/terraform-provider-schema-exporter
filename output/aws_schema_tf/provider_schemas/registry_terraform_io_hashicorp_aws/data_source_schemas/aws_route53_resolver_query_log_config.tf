data "aws_route53_resolver_query_log_config" "name" {
  arn = string (Computed)
  destination_arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  resolver_query_log_config_id = string (Optional)
  share_status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
