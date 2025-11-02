resource "aws_vpc_route_server_peer" "name" {
  peer_address = string (Required)
  route_server_endpoint_id = string (Required)
  arn = string (Computed)
  endpoint_eni_address = string (Computed)
  endpoint_eni_id = string (Computed)
  region = string (Optional, Computed)
  route_server_id = string (Computed)
  route_server_peer_id = string (Computed)
  subnet_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_id = string (Computed)

  bgp_options block "list" (Optional) {
    peer_asn = number (Required)
    peer_liveness_detection = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
