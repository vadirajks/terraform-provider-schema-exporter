resource "aws_dx_hosted_private_virtual_interface_accepter" "name" {
  virtual_interface_id = string (Required)
  arn = string (Computed)
  dx_gateway_id = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpn_gateway_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
