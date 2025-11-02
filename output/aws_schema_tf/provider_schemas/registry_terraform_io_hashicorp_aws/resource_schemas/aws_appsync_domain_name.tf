resource "aws_appsync_domain_name" "name" {
  certificate_arn = string (Required)
  domain_name = string (Required)
  appsync_domain_name = string (Computed)
  description = string (Optional)
  hosted_zone_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
