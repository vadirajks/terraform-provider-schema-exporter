resource "aws_wafv2_ip_set" "name" {
  ip_address_version = string (Required)
  scope = string (Required)
  addresses = ['set', 'string'] (Optional)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  lock_token = string (Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
