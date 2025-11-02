resource "aws_lightsail_domain_entry" "name" {
  domain_name = string (Required)
  name = string (Required)
  target = string (Required)
  type = string (Required)
  id = string (Optional, Computed)
  is_alias = bool (Optional)
  region = string (Optional, Computed)
}
