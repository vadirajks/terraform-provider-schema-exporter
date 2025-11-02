resource "aws_load_balancer_listener_policy" "name" {
  load_balancer_name = string (Required)
  load_balancer_port = number (Required)
  id = string (Optional, Computed)
  policy_names = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  triggers = ['map', 'string'] (Optional)
}
