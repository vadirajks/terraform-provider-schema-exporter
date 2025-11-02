resource "aws_neptune_cluster_endpoint" "name" {
  cluster_endpoint_identifier = string (Required)
  cluster_identifier = string (Required)
  endpoint_type = string (Required)
  arn = string (Computed)
  endpoint = string (Computed)
  excluded_members = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  static_members = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
