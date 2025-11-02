resource "aws_networkmanager_transit_gateway_registration" "name" {
  global_network_id = string (Required)
  transit_gateway_arn = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
