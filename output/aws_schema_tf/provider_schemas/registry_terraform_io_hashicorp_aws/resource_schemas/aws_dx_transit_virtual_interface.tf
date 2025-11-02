resource "aws_dx_transit_virtual_interface" "name" {
  address_family = string (Required)
  bgp_asn = number (Required)
  connection_id = string (Required)
  dx_gateway_id = string (Required)
  name = string (Required)
  vlan = number (Required)
  amazon_address = string (Optional, Computed)
  amazon_side_asn = string (Computed)
  arn = string (Computed)
  aws_device = string (Computed)
  bgp_auth_key = string (Optional, Computed)
  customer_address = string (Optional, Computed)
  id = string (Optional, Computed)
  jumbo_frame_capable = bool (Computed)
  mtu = number (Optional)
  region = string (Optional, Computed)
  sitelink_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
