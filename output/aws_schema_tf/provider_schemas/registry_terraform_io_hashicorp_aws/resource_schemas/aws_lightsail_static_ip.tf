resource "aws_lightsail_static_ip" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  region = string (Optional, Computed)
  support_code = string (Computed)
}
