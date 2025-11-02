resource "aws_ec2_traffic_mirror_target" "name" {
  arn = string (Computed)
  description = string (Optional)
  gateway_load_balancer_endpoint_id = string (Optional)
  id = string (Optional, Computed)
  network_interface_id = string (Optional)
  network_load_balancer_arn = string (Optional)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
