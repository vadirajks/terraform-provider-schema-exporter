data "aws_ec2_local_gateway_virtual_interface" "name" {
  id = string (Optional, Computed)
  local_address = string (Computed)
  local_bgp_asn = number (Computed)
  local_gateway_id = string (Computed)
  local_gateway_virtual_interface_ids = ['set', 'string'] (Computed)
  peer_address = string (Computed)
  peer_bgp_asn = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vlan = number (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
