resource "aws_globalaccelerator_custom_routing_listener" "name" {
  accelerator_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  port_range block "set" (Required) {
    from_port = number (Optional)
    to_port = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
