resource "aws_app_cookie_stickiness_policy" "name" {
  cookie_name = string (Required)
  lb_port = number (Required)
  load_balancer = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
