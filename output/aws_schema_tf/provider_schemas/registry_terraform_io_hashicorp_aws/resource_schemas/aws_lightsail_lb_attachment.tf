resource "aws_lightsail_lb_attachment" "name" {
  instance_name = string (Required)
  lb_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
