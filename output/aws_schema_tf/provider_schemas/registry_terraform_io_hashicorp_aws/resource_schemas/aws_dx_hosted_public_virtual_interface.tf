resource "aws_dx_hosted_public_virtual_interface" "name" {
  address_family = string (Required)
  bgp_asn = number (Required)
  connection_id = string (Required)
  name = string (Required)
  owner_account_id = string (Required)
  route_filter_prefixes = ['set', 'string'] (Required)
  vlan = number (Required)
  amazon_address = string (Optional, Computed)
  amazon_side_asn = string (Computed)
  arn = string (Computed)
  aws_device = string (Computed)
  bgp_auth_key = string (Optional, Computed)
  customer_address = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
