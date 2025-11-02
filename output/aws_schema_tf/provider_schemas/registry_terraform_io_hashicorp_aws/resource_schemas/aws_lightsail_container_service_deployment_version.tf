resource "aws_lightsail_container_service_deployment_version" "name" {
  service_name = string (Required)
  created_at = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  version = number (Computed)

  container block "set" (Required) {
    container_name = string (Required)
    image = string (Required)
    command = ['list', 'string'] (Optional)
    environment = ['map', 'string'] (Optional)
    ports = ['map', 'string'] (Optional)
  }

  public_endpoint block "list" (Optional) {
    container_name = string (Required)
    container_port = number (Required)

    health_check block "list" (Required) {
      healthy_threshold = number (Optional)
      interval_seconds = number (Optional)
      path = string (Optional)
      success_codes = string (Optional)
      timeout_seconds = number (Optional)
      unhealthy_threshold = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
