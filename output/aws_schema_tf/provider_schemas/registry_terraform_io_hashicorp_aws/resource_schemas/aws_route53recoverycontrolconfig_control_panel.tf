resource "aws_route53recoverycontrolconfig_control_panel" "name" {
  cluster_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  default_control_panel = bool (Computed)
  id = string (Optional, Computed)
  routing_control_count = number (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
