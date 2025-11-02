resource "aws_msk_vpc_connection" "name" {
  authentication = string (Required)
  client_subnets = ['set', 'string'] (Required)
  security_groups = ['set', 'string'] (Required)
  target_cluster_arn = string (Required)
  vpc_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
