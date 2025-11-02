resource "aws_vpn_gateway_route_propagation" "name" {
  route_table_id = string (Required)
  vpn_gateway_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
