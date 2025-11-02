resource "aws_lightsail_lb_https_redirection_policy" "name" {
  enabled = bool (Required)
  lb_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
