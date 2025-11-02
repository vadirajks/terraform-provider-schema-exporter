resource "aws_rds_global_cluster" "name" {
  global_cluster_identifier = string (Required)
  arn = string (Computed)
  database_name = string (Optional, Computed)
  deletion_protection = bool (Optional)
  endpoint = string (Computed)
  engine = string (Optional, Computed)
  engine_lifecycle_support = string (Optional, Computed)
  engine_version = string (Optional, Computed)
  engine_version_actual = string (Computed)
  force_destroy = bool (Optional)
  global_cluster_members = ['set', ['object', {'db_cluster_arn': 'string', 'is_writer': 'bool'}]] (Computed)
  global_cluster_resource_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  source_db_cluster_identifier = string (Optional, Computed)
  storage_encrypted = bool (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
