data "aws_wafv2_ip_set" "name" {
  name = string (Required)
  scope = string (Required)
  addresses = ['set', 'string'] (Computed)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  ip_address_version = string (Computed)
  region = string (Optional, Computed)
}
