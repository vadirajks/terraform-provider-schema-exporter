resource "aws_service_discovery_private_dns_namespace" "name" {
  name = string (Required)
  vpc = string (Required)
  arn = string (Computed)
  description = string (Optional)
  hosted_zone = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
