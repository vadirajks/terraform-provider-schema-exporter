resource "aws_route53_traffic_policy_instance" "name" {
  hosted_zone_id = string (Required)
  name = string (Required)
  traffic_policy_id = string (Required)
  traffic_policy_version = number (Required)
  ttl = number (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
}
