resource "aws_neptune_global_cluster" "name" {
  global_cluster_identifier = string (Required)
  arn = string (Computed)
  deletion_protection = bool (Optional)
  engine = string (Optional, Computed)
  engine_version = string (Optional, Computed)
  global_cluster_members = ['set', ['object', {'db_cluster_arn': 'string', 'is_writer': 'bool'}]] (Computed)
  global_cluster_resource_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  source_db_cluster_identifier = string (Optional, Computed)
  status = string (Computed)
  storage_encrypted = bool (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
