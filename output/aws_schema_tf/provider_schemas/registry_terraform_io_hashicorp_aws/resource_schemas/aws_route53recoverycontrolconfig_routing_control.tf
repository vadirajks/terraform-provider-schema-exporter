resource "aws_route53recoverycontrolconfig_routing_control" "name" {
  cluster_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  control_panel_arn = string (Optional, Computed)
  id = string (Optional, Computed)
  status = string (Computed)
}
