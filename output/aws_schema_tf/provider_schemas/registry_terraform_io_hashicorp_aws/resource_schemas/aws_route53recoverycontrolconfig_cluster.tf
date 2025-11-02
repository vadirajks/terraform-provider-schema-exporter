resource "aws_route53recoverycontrolconfig_cluster" "name" {
  name = string (Required)
  arn = string (Computed)
  cluster_endpoints = ['list', ['object', {'endpoint': 'string', 'region': 'string'}]] (Computed)
  id = string (Optional, Computed)
  network_type = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
