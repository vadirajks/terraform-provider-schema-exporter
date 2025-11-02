resource "aws_dx_hosted_transit_virtual_interface_accepter" "name" {
  dx_gateway_id = string (Required)
  virtual_interface_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
