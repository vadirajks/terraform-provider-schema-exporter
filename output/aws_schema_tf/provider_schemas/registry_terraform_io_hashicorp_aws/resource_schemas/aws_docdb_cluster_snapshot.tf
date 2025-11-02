resource "aws_docdb_cluster_snapshot" "name" {
  db_cluster_identifier = string (Required)
  db_cluster_snapshot_identifier = string (Required)
  availability_zones = ['list', 'string'] (Computed)
  db_cluster_snapshot_arn = string (Computed)
  engine = string (Computed)
  engine_version = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  port = number (Computed)
  region = string (Optional, Computed)
  snapshot_type = string (Computed)
  source_db_cluster_snapshot_arn = string (Computed)
  status = string (Computed)
  storage_encrypted = bool (Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
