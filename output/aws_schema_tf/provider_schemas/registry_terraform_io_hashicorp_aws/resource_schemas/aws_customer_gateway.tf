resource "aws_customer_gateway" "name" {
  type = string (Required)
  arn = string (Computed)
  bgp_asn = string (Optional)
  bgp_asn_extended = string (Optional)
  certificate_arn = string (Optional)
  device_name = string (Optional)
  id = string (Optional, Computed)
  ip_address = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
