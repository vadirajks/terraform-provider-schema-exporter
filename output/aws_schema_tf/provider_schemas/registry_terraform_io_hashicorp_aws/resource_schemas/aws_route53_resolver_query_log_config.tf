resource "aws_route53_resolver_query_log_config" "name" {
  destination_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  share_status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
