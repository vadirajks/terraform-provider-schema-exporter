resource "aws_ec2_traffic_mirror_filter" "name" {
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  network_services = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
