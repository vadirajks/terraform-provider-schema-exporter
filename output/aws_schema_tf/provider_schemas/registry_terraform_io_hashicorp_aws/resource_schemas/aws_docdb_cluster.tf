resource "aws_docdb_cluster" "name" {
  allow_major_version_upgrade = bool (Optional)
  apply_immediately = bool (Optional)
  arn = string (Computed)
  availability_zones = ['set', 'string'] (Optional, Computed)
  backup_retention_period = number (Optional)
  cluster_identifier = string (Optional, Computed)
  cluster_identifier_prefix = string (Optional, Computed)
  cluster_members = ['set', 'string'] (Optional, Computed)
  cluster_resource_id = string (Computed)
  db_cluster_parameter_group_name = string (Optional, Computed)
  db_subnet_group_name = string (Optional, Computed)
  deletion_protection = bool (Optional)
  enabled_cloudwatch_logs_exports = ['list', 'string'] (Optional)
  endpoint = string (Computed)
  engine = string (Optional)
  engine_version = string (Optional, Computed)
  final_snapshot_identifier = string (Optional)
  global_cluster_identifier = string (Optional)
  hosted_zone_id = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  manage_master_user_password = bool (Optional)
  master_password = string (Optional)
  master_password_wo = string (Optional)
  master_password_wo_version = number (Optional)
  master_user_secret = ['list', ['object', {'kms_key_id': 'string', 'secret_arn': 'string', 'secret_status': 'string'}]] (Computed)
  master_username = string (Optional, Computed)
  port = number (Optional)
  preferred_backup_window = string (Optional, Computed)
  preferred_maintenance_window = string (Optional, Computed)
  reader_endpoint = string (Computed)
  region = string (Optional, Computed)
  skip_final_snapshot = bool (Optional)
  snapshot_identifier = string (Optional)
  storage_encrypted = bool (Optional)
  storage_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)

  restore_to_point_in_time block "list" (Optional) {
    source_cluster_identifier = string (Required)
    restore_to_time = string (Optional)
    restore_type = string (Optional)
    use_latest_restorable_time = bool (Optional)
  }

  serverless_v2_scaling_configuration block "list" (Optional) {
    max_capacity = number (Required)
    min_capacity = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
