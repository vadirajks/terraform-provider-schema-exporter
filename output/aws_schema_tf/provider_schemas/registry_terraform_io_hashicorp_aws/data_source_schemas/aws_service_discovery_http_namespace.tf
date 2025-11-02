data "aws_service_discovery_http_namespace" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  http_name = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
