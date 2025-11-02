resource "aws_proxy_protocol_policy" "name" {
  instance_ports = ['set', 'string'] (Required)
  load_balancer = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
