resource "aws_service_discovery_service" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  namespace_id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional, Computed)

  dns_config block "list" (Optional) {
    namespace_id = string (Required)
    routing_policy = string (Optional)

    dns_records block "list" (Required) {
      ttl = number (Required)
      type = string (Required)
    }
  }

  health_check_config block "list" (Optional) {
    failure_threshold = number (Optional)
    resource_path = string (Optional)
    type = string (Optional)
  }

  health_check_custom_config block "list" (Optional) {
    failure_threshold = number (Optional)
  }
}
