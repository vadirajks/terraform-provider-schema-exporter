resource "aws_route53_traffic_policy" "name" {
  document = string (Required)
  name = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  id = string (Optional, Computed)
  type = string (Computed)
  version = number (Computed)
}
