resource "aws_elasticache_global_replication_group" "name" {
  global_replication_group_id_suffix = string (Required)
  primary_replication_group_id = string (Required)
  arn = string (Computed)
  at_rest_encryption_enabled = bool (Computed)
  auth_token_enabled = bool (Computed)
  automatic_failover_enabled = bool (Optional, Computed)
  cache_node_type = string (Optional, Computed)
  cluster_enabled = bool (Computed)
  engine = string (Optional, Computed)
  engine_version = string (Optional, Computed)
  engine_version_actual = string (Computed)
  global_node_groups = ['set', ['object', {'global_node_group_id': 'string', 'slots': 'string'}]] (Computed)
  global_replication_group_description = string (Optional)
  global_replication_group_id = string (Computed)
  id = string (Optional, Computed)
  num_node_groups = number (Optional, Computed)
  parameter_group_name = string (Optional)
  region = string (Optional, Computed)
  transit_encryption_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
