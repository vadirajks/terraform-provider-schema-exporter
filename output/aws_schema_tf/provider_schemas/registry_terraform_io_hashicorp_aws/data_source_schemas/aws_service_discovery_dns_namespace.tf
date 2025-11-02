data "aws_service_discovery_dns_namespace" "name" {
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  description = string (Computed)
  hosted_zone = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
