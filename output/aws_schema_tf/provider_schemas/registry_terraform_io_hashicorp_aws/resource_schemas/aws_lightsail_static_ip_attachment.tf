resource "aws_lightsail_static_ip_attachment" "name" {
  instance_name = string (Required)
  static_ip_name = string (Required)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  region = string (Optional, Computed)
}
