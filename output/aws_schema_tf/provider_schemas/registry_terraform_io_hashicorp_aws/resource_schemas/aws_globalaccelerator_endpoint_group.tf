resource "aws_globalaccelerator_endpoint_group" "name" {
  listener_arn = string (Required)
  arn = string (Computed)
  endpoint_group_region = string (Optional, Computed)
  health_check_interval_seconds = number (Optional)
  health_check_path = string (Optional, Computed)
  health_check_port = number (Optional, Computed)
  health_check_protocol = string (Optional)
  id = string (Optional, Computed)
  threshold_count = number (Optional)
  traffic_dial_percentage = number (Optional)

  endpoint_configuration block "set" (Optional) {
    attachment_arn = string (Optional)
    client_ip_preservation_enabled = bool (Optional, Computed)
    endpoint_id = string (Optional)
    weight = number (Optional)
  }

  port_override block "set" (Optional) {
    endpoint_port = number (Required)
    listener_port = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
