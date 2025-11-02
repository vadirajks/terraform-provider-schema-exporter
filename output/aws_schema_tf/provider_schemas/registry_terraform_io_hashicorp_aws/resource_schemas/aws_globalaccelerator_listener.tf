resource "aws_globalaccelerator_listener" "name" {
  accelerator_arn = string (Required)
  protocol = string (Required)
  arn = string (Computed)
  client_affinity = string (Optional)
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
