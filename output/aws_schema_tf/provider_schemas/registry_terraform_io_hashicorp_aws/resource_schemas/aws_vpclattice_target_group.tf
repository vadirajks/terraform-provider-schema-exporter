resource "aws_vpclattice_target_group" "name" {
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  config block "list" (Optional) {
    ip_address_type = string (Optional, Computed)
    lambda_event_structure_version = string (Optional, Computed)
    port = number (Optional, Computed)
    protocol = string (Optional, Computed)
    protocol_version = string (Optional, Computed)
    vpc_identifier = string (Optional)

    health_check block "list" (Optional) {
      enabled = bool (Optional)
      health_check_interval_seconds = number (Optional)
      health_check_timeout_seconds = number (Optional)
      healthy_threshold_count = number (Optional)
      path = string (Optional)
      port = number (Optional, Computed)
      protocol = string (Optional, Computed)
      protocol_version = string (Optional)
      unhealthy_threshold_count = number (Optional)

      matcher block "list" (Optional) {
        value = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
