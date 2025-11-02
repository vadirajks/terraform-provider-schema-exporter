resource "aws_networkmanager_transit_gateway_connect_peer_association" "name" {
  device_id = string (Required)
  global_network_id = string (Required)
  transit_gateway_connect_peer_arn = string (Required)
  id = string (Optional, Computed)
  link_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
