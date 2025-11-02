resource "aws_lightsail_lb_certificate_attachment" "name" {
  certificate_name = string (Required)
  lb_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
