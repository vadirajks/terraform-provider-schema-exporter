resource "aws_lightsail_domain" "name" {
  domain_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
