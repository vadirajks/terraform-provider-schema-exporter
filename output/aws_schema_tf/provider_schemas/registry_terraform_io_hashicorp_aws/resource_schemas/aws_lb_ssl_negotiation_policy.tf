resource "aws_lb_ssl_negotiation_policy" "name" {
  lb_port = number (Required)
  load_balancer = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  triggers = ['map', 'string'] (Optional)

  attribute block "set" (Optional) {
    name = string (Required)
    value = string (Required)
  }
}
