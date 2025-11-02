resource "aws_dx_bgp_peer" "name" {
  address_family = string (Required)
  bgp_asn = number (Required)
  virtual_interface_id = string (Required)
  amazon_address = string (Optional, Computed)
  aws_device = string (Computed)
  bgp_auth_key = string (Optional, Computed)
  bgp_peer_id = string (Computed)
  bgp_status = string (Computed)
  customer_address = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
