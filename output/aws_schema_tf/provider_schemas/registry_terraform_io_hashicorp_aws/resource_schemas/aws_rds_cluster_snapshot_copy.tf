resource "aws_rds_cluster_snapshot_copy" "name" {
  source_db_cluster_snapshot_identifier = string (Required)
  target_db_cluster_snapshot_identifier = string (Required)
  allocated_storage = number (Computed)
  copy_tags = bool (Optional)
  db_cluster_snapshot_arn = string (Computed)
  destination_region = string (Optional)
  engine = string (Computed)
  engine_version = string (Computed)
  id = string (Computed)
  kms_key_id = string (Optional)
  license_model = string (Computed)
  presigned_url = string (Optional)
  region = string (Optional, Computed)
  shared_accounts = ['set', 'string'] (Optional)
  snapshot_type = string (Computed)
  storage_encrypted = bool (Computed)
  storage_type = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
