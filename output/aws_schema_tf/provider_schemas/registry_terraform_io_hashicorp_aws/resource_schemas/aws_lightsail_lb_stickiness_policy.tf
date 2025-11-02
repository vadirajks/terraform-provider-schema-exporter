resource "aws_lightsail_lb_stickiness_policy" "name" {
  cookie_duration = number (Required)
  enabled = bool (Required)
  lb_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
