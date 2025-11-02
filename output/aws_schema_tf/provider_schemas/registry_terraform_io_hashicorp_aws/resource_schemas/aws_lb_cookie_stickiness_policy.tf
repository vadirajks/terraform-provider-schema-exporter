resource "aws_lb_cookie_stickiness_policy" "name" {
  lb_port = number (Required)
  load_balancer = string (Required)
  name = string (Required)
  cookie_expiration_period = number (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
