resource "aws_globalaccelerator_custom_routing_endpoint_group" "name" {
  listener_arn = string (Required)
  arn = string (Computed)
  endpoint_group_region = string (Optional, Computed)
  id = string (Optional, Computed)

  destination_configuration block "set" (Required) {
    from_port = number (Required)
    protocols = ['set', 'string'] (Required)
    to_port = number (Required)
  }

  endpoint_configuration block "set" (Optional) {
    endpoint_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
