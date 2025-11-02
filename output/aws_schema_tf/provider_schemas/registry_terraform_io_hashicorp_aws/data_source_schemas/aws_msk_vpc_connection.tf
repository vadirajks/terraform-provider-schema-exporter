data "aws_msk_vpc_connection" "name" {
  arn = string (Required)
  authentication = string (Computed)
  client_subnets = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  security_groups = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  target_cluster_arn = string (Computed)
  vpc_id = string (Computed)
}
