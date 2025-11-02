resource "aws_dax_cluster" "name" {
  cluster_name = string (Required)
  iam_role_arn = string (Required)
  node_type = string (Required)
  replication_factor = number (Required)
  arn = string (Computed)
  availability_zones = ['set', 'string'] (Optional)
  cluster_address = string (Computed)
  cluster_endpoint_encryption_type = string (Optional)
  configuration_endpoint = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  maintenance_window = string (Optional, Computed)
  nodes = ['list', ['object', {'address': 'string', 'availability_zone': 'string', 'id': 'string', 'port': 'number'}]] (Computed)
  notification_topic_arn = string (Optional)
  parameter_group_name = string (Optional, Computed)
  port = number (Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  subnet_group_name = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  server_side_encryption block "list" (Optional) {
    enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
