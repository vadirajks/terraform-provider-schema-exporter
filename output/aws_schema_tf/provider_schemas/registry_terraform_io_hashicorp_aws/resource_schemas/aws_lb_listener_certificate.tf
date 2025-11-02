resource "aws_lb_listener_certificate" "name" {
  certificate_arn = string (Required)
  listener_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
