data "aws_customer_gateway" "name" {
  arn = string (Computed)
  bgp_asn = number (Computed)
  bgp_asn_extended = number (Computed)
  certificate_arn = string (Computed)
  device_name = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  type = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
