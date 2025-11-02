resource "aws_fsx_lustre_file_system" "name" {
  subnet_ids = ['list', 'string'] (Required)
  arn = string (Computed)
  auto_import_policy = string (Optional, Computed)
  automatic_backup_retention_days = number (Optional, Computed)
  backup_id = string (Optional)
  copy_tags_to_backups = bool (Optional)
  daily_automatic_backup_start_time = string (Optional, Computed)
  data_compression_type = string (Optional)
  deployment_type = string (Optional)
  dns_name = string (Computed)
  drive_cache_type = string (Optional)
  efa_enabled = bool (Optional, Computed)
  export_path = string (Optional, Computed)
  file_system_type_version = string (Optional, Computed)
  final_backup_tags = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  import_path = string (Optional)
  imported_file_chunk_size = number (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  mount_name = string (Computed)
  network_interface_ids = ['list', 'string'] (Computed)
  owner_id = string (Computed)
  per_unit_storage_throughput = number (Optional)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional)
  skip_final_backup = bool (Optional)
  storage_capacity = number (Optional)
  storage_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  throughput_capacity = number (Optional)
  vpc_id = string (Computed)
  weekly_maintenance_start_time = string (Optional, Computed)

  data_read_cache_configuration block "list" (Optional) {
    sizing_mode = string (Required)
    size = number (Optional)
  }

  log_configuration block "list" (Optional) {
    destination = string (Optional, Computed)
    level = string (Optional)
  }

  metadata_configuration block "list" (Optional) {
    iops = number (Optional, Computed)
    mode = string (Optional, Computed)
  }

  root_squash_configuration block "list" (Optional) {
    no_squash_nids = ['set', 'string'] (Optional)
    root_squash = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
