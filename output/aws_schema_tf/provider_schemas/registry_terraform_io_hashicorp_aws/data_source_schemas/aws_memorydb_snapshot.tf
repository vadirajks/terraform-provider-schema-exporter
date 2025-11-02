data "aws_memorydb_snapshot" "name" {
  name = string (Required)
  arn = string (Computed)
  cluster_configuration = ['list', ['object', {'description': 'string', 'engine': 'string', 'engine_version': 'string', 'maintenance_window': 'string', 'name': 'string', 'node_type': 'string', 'num_shards': 'number', 'parameter_group_name': 'string', 'port': 'number', 'snapshot_retention_limit': 'number', 'snapshot_window': 'string', 'subnet_group_name': 'string', 'topic_arn': 'string', 'vpc_id': 'string'}]] (Computed)
  cluster_name = string (Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Computed)
  region = string (Optional, Computed)
  source = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
